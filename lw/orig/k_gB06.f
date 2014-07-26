C     path:      $Source: /storm/rc1/cvsroot/rc/rrtm_lw/src/k_gB06.f,v $
C     author:    $Author: jdelamer $
C     revision:  $Revision: 3.2 $
C     created:   $Date: 2010/07/07 21:10:51 $
C
C  --------------------------------------------------------------------------
C |                                                                          |
C |  Copyright 2002, 2003, Atmospheric & Environmental Research, Inc. (AER). |
C |  This software may be used, copied, or redistributed as long as it is    |
C |  not sold and this copyright notice is reproduced on each copy made.     |
C |  This model is provided as is without any express or implied warranties. |
C |                       (http://www.rtweb.aer.com/)                        |
C |                                                                          |
C  --------------------------------------------------------------------------

       PARAMETER (MG=16)
       REAL KA(5,13,MG), KA_MCO2(19,MG)
       DIMENSION SELFREF(10,MG), FORREF(4,MG)

       COMMON /CVRSN6/ HNAMKG6,HVRKG6
       COMMON /K6/ KA, FORREF, SELFREF, KA_MCO2

       CHARACTER*18 HVRKG6

       CHARACTER*18 HNAMKG6

       DATA HVRKG6 /'$Revision: 3.2 $'/
       DATA HNAMKG6 / '         k_gB06.f:' /

C     The array KA contains absorption coefs at the 16 chosen g-values 
C     for a range of pressure levels > ~100mb and temperatures.  The first
C     index in the array, JT, which runs from 1 to 5, corresponds to 
C     different temperatures.  More specifically, JT = 3 means that the 
C     data are for the corresponding TREF for this  pressure level, 
C     JT = 2 refers to the temperatureTREF-15, JT = 1 is for TREF-30, 
C     JT = 4 is for TREF+15, and JT = 5 is for TREF+30.  The second 
C     index, JP, runs from 1 to 13 and refers to the corresponding 
C     pressure level in PREF (e.g. JP = 1 is for a pressure of 1053.63 mb).  
C     The third index, IG, goes from 1 to 16, and tells us which 
C     g-interval the absorption coefficients are for.

      DATA (KA(JT, 1, 1),JT=1,5) /
     &1.5108E-05,1.6223E-05,1.5899E-05,1.5254E-05,1.4889E-05/
      DATA (KA(JT, 2, 1),JT=1,5) /
     &1.0690E-05,1.0800E-05,1.0568E-05,1.0057E-05,9.4945E-06/
      DATA (KA(JT, 3, 1),JT=1,5) /
     &6.1072E-06,5.8741E-06,5.6796E-06,5.3664E-06,5.4934E-06/
      DATA (KA(JT, 4, 1),JT=1,5) /
     &3.0372E-06,2.9964E-06,2.6541E-06,2.8791E-06,3.9638E-06/
      DATA (KA(JT, 5, 1),JT=1,5) /
     &1.4777E-06,1.4916E-06,1.4819E-06,2.2264E-06,3.3268E-06/
      DATA (KA(JT, 6, 1),JT=1,5) /
     &7.4936E-07,7.2240E-07,1.1518E-06,1.7724E-06,2.8203E-06/
      DATA (KA(JT, 7, 1),JT=1,5) /
     &3.4904E-07,5.1177E-07,8.8489E-07,1.5219E-06,2.2871E-06/
      DATA (KA(JT, 8, 1),JT=1,5) /
     &2.1072E-07,4.5257E-07,7.4214E-07,1.2628E-06,1.9840E-06/
      DATA (KA(JT, 9, 1),JT=1,5) /
     &2.1779E-07,4.8639E-07,8.1133E-07,1.3719E-06,2.1663E-06/
      DATA (KA(JT,10, 1),JT=1,5) /
     &2.5134E-07,5.9583E-07,1.0449E-06,1.5899E-06,2.7441E-06/
      DATA (KA(JT,11, 1),JT=1,5) /
     &2.9178E-07,6.5749E-07,1.0958E-06,1.7834E-06,3.1413E-06/
      DATA (KA(JT,12, 1),JT=1,5) /
     &2.7268E-07,6.1470E-07,1.0270E-06,1.7566E-06,3.0441E-06/
      DATA (KA(JT,13, 1),JT=1,5) /
     &2.2995E-07,5.2185E-07,8.7916E-07,1.4999E-06,2.5740E-06/
      DATA (KA(JT, 1, 2),JT=1,5) /
     &2.1301E-05,2.3060E-05,2.1909E-05,2.0972E-05,2.1772E-05/
      DATA (KA(JT, 2, 2),JT=1,5) /
     &1.4382E-05,1.4147E-05,1.4339E-05,1.3679E-05,1.6973E-05/
      DATA (KA(JT, 3, 2),JT=1,5) /
     &8.0559E-06,8.4180E-06,7.4096E-06,9.3490E-06,1.0824E-05/
      DATA (KA(JT, 4, 2),JT=1,5) /
     &4.3614E-06,3.9657E-06,5.1299E-06,6.1754E-06,8.2925E-06/
      DATA (KA(JT, 5, 2),JT=1,5) /
     &2.2350E-06,2.3231E-06,3.3297E-06,4.8612E-06,6.5883E-06/
      DATA (KA(JT, 6, 2),JT=1,5) /
     &1.0863E-06,1.7510E-06,2.4185E-06,3.5854E-06,5.1511E-06/
      DATA (KA(JT, 7, 2),JT=1,5) /
     &7.6749E-07,1.2024E-06,1.9782E-06,2.7223E-06,4.2604E-06/
      DATA (KA(JT, 8, 2),JT=1,5) /
     &6.8738E-07,9.7505E-07,1.6738E-06,2.4371E-06,3.9386E-06/
      DATA (KA(JT, 9, 2),JT=1,5) /
     &7.3668E-07,1.0167E-06,1.9026E-06,3.0451E-06,5.0060E-06/
      DATA (KA(JT,10, 2),JT=1,5) /
     &9.8863E-07,1.5373E-06,2.5876E-06,4.8975E-06,7.8206E-06/
      DATA (KA(JT,11, 2),JT=1,5) /
     &1.0934E-06,1.6488E-06,2.7961E-06,5.2441E-06,8.5410E-06/
      DATA (KA(JT,12, 2),JT=1,5) /
     &1.0277E-06,1.5126E-06,2.6342E-06,4.9122E-06,8.0730E-06/
      DATA (KA(JT,13, 2),JT=1,5) /
     &8.7381E-07,1.2665E-06,2.2835E-06,4.2048E-06,6.9189E-06/
      DATA (KA(JT, 1, 3),JT=1,5) /
     &2.3993E-05,2.2308E-05,2.5893E-05,3.3883E-05,3.8280E-05/
      DATA (KA(JT, 2, 3),JT=1,5) /
     &1.4011E-05,1.4296E-05,2.1223E-05,2.4417E-05,2.7881E-05/
      DATA (KA(JT, 3, 3),JT=1,5) /
     &7.3965E-06,9.9180E-06,1.3735E-05,1.4536E-05,1.8056E-05/
      DATA (KA(JT, 4, 3),JT=1,5) /
     &4.5365E-06,7.0513E-06,7.2165E-06,9.8585E-06,1.1890E-05/
      DATA (KA(JT, 5, 3),JT=1,5) /
     &3.8953E-06,4.3626E-06,5.3805E-06,6.6118E-06,9.5204E-06/
      DATA (KA(JT, 6, 3),JT=1,5) /
     &2.4692E-06,2.6620E-06,3.5833E-06,5.1748E-06,7.8116E-06/
      DATA (KA(JT, 7, 3),JT=1,5) /
     &1.4531E-06,2.0753E-06,2.7794E-06,4.8340E-06,7.5049E-06/
      DATA (KA(JT, 8, 3),JT=1,5) /
     &8.9161E-07,1.6554E-06,2.7945E-06,4.7401E-06,7.3008E-06/
      DATA (KA(JT, 9, 3),JT=1,5) /
     &1.1556E-06,2.3050E-06,3.6767E-06,6.4276E-06,1.0393E-05/
      DATA (KA(JT,10, 3),JT=1,5) /
     &1.3936E-06,2.7867E-06,4.8066E-06,7.9343E-06,1.4027E-05/
      DATA (KA(JT,11, 3),JT=1,5) /
     &1.4469E-06,3.0966E-06,5.3467E-06,9.2496E-06,1.6488E-05/
      DATA (KA(JT,12, 3),JT=1,5) /
     &1.3797E-06,2.9577E-06,5.1784E-06,9.2835E-06,1.6169E-05/
      DATA (KA(JT,13, 3),JT=1,5) /
     &1.1793E-06,2.5194E-06,4.4903E-06,8.2145E-06,1.4209E-05/
      DATA (KA(JT, 1, 4),JT=1,5) /
     &4.3371E-05,4.2284E-05,4.2569E-05,4.5333E-05,4.9887E-05/
      DATA (KA(JT, 2, 4),JT=1,5) /
     &2.7836E-05,3.0742E-05,2.5159E-05,3.1058E-05,3.3502E-05/
      DATA (KA(JT, 3, 4),JT=1,5) /
     &1.5959E-05,1.5689E-05,1.8607E-05,1.9311E-05,2.2949E-05/
      DATA (KA(JT, 4, 4),JT=1,5) /
     &9.4357E-06,8.9581E-06,1.1706E-05,1.2462E-05,1.9504E-05/
      DATA (KA(JT, 5, 4),JT=1,5) /
     &4.6991E-06,5.9565E-06,7.1131E-06,1.0656E-05,1.6961E-05/
      DATA (KA(JT, 6, 4),JT=1,5) /
     &2.9104E-06,3.9977E-06,5.8385E-06,9.8483E-06,1.4910E-05/
      DATA (KA(JT, 7, 4),JT=1,5) /
     &2.0404E-06,2.7360E-06,5.0537E-06,8.2979E-06,1.2550E-05/
      DATA (KA(JT, 8, 4),JT=1,5) /
     &1.7124E-06,2.7023E-06,4.6383E-06,7.6524E-06,1.2059E-05/
      DATA (KA(JT, 9, 4),JT=1,5) /
     &1.7855E-06,3.1326E-06,5.8535E-06,9.7627E-06,1.5447E-05/
      DATA (KA(JT,10, 4),JT=1,5) /
     &2.2188E-06,4.3098E-06,8.7192E-06,1.5363E-05,2.4174E-05/
      DATA (KA(JT,11, 4),JT=1,5) /
     &2.5395E-06,4.8780E-06,1.0119E-05,1.6942E-05,2.6266E-05/
      DATA (KA(JT,12, 4),JT=1,5) /
     &2.4951E-06,4.8859E-06,9.7649E-06,1.6137E-05,2.5091E-05/
      DATA (KA(JT,13, 4),JT=1,5) /
     &2.2608E-06,4.4391E-06,8.5101E-06,1.3874E-05,2.1718E-05/
      DATA (KA(JT, 1, 5),JT=1,5) /
     &3.5802E-05,4.9569E-05,5.6081E-05,5.4456E-05,6.1620E-05/
      DATA (KA(JT, 2, 5),JT=1,5) /
     &2.7431E-05,3.7092E-05,4.0464E-05,4.0603E-05,5.2992E-05/
      DATA (KA(JT, 3, 5),JT=1,5) /
     &1.6511E-05,2.1182E-05,1.9952E-05,2.9271E-05,4.8230E-05/
      DATA (KA(JT, 4, 5),JT=1,5) /
     &1.1211E-05,1.2922E-05,1.4441E-05,2.5935E-05,3.8342E-05/
      DATA (KA(JT, 5, 5),JT=1,5) /
     &7.1937E-06,7.6149E-06,1.2471E-05,2.1334E-05,3.0465E-05/
      DATA (KA(JT, 6, 5),JT=1,5) /
     &4.6613E-06,5.5104E-06,1.0664E-05,1.6922E-05,2.4802E-05/
      DATA (KA(JT, 7, 5),JT=1,5) /
     &2.6908E-06,5.1362E-06,9.2865E-06,1.4719E-05,2.2004E-05/
      DATA (KA(JT, 8, 5),JT=1,5) /
     &2.4192E-06,4.7977E-06,8.6605E-06,1.4122E-05,2.1533E-05/
      DATA (KA(JT, 9, 5),JT=1,5) /
     &2.6505E-06,5.2138E-06,9.6090E-06,1.6493E-05,2.6941E-05/
      DATA (KA(JT,10, 5),JT=1,5) /
     &3.8793E-06,7.0191E-06,1.2677E-05,2.2456E-05,3.8574E-05/
      DATA (KA(JT,11, 5),JT=1,5) /
     &4.3385E-06,8.1555E-06,1.4661E-05,2.7034E-05,4.5538E-05/
      DATA (KA(JT,12, 5),JT=1,5) /
     &4.4806E-06,8.0941E-06,1.5170E-05,2.7140E-05,4.7747E-05/
      DATA (KA(JT,13, 5),JT=1,5) /
     &4.0859E-06,7.4306E-06,1.3915E-05,2.5201E-05,4.3638E-05/
      DATA (KA(JT, 1, 6),JT=1,5) /
     &6.3502E-05,6.1626E-05,6.7874E-05,7.9926E-05,1.4827E-04/
      DATA (KA(JT, 2, 6),JT=1,5) /
     &4.2546E-05,3.3547E-05,4.0025E-05,7.0944E-05,1.2242E-04/
      DATA (KA(JT, 3, 6),JT=1,5) /
     &2.4414E-05,2.4466E-05,3.6681E-05,6.7397E-05,9.7673E-05/
      DATA (KA(JT, 4, 6),JT=1,5) /
     &1.1878E-05,1.6683E-05,3.4310E-05,5.3734E-05,7.4953E-05/
      DATA (KA(JT, 5, 6),JT=1,5) /
     &8.0437E-06,1.5133E-05,2.7743E-05,4.0147E-05,5.6233E-05/
      DATA (KA(JT, 6, 6),JT=1,5) /
     &6.1550E-06,1.2316E-05,1.9945E-05,3.0529E-05,4.5113E-05/
      DATA (KA(JT, 7, 6),JT=1,5) /
     &4.8891E-06,9.6377E-06,1.6338E-05,2.4863E-05,3.7137E-05/
      DATA (KA(JT, 8, 6),JT=1,5) /
     &4.3692E-06,8.7526E-06,1.4669E-05,2.2987E-05,3.5150E-05/
      DATA (KA(JT, 9, 6),JT=1,5) /
     &5.3838E-06,1.0727E-05,1.8376E-05,3.0485E-05,4.8603E-05/
      DATA (KA(JT,10, 6),JT=1,5) /
     &6.7708E-06,1.4529E-05,2.6810E-05,4.7617E-05,7.8536E-05/
      DATA (KA(JT,11, 6),JT=1,5) /
     &8.3666E-06,1.7190E-05,3.3330E-05,5.7837E-05,9.5886E-05/
      DATA (KA(JT,12, 6),JT=1,5) /
     &8.6264E-06,1.8503E-05,3.4797E-05,6.1435E-05,1.0046E-04/
      DATA (KA(JT,13, 6),JT=1,5) /
     &8.2669E-06,1.8055E-05,3.3739E-05,5.7805E-05,9.4677E-05/
      DATA (KA(JT, 1, 7),JT=1,5) /
     &5.0894E-05,6.7019E-05,1.1702E-04,2.4649E-04,3.5046E-04/
      DATA (KA(JT, 2, 7),JT=1,5) /
     &4.3304E-05,4.9708E-05,1.0701E-04,1.8228E-04,2.5635E-04/
      DATA (KA(JT, 3, 7),JT=1,5) /
     &2.6855E-05,4.5972E-05,9.9426E-05,1.4867E-04,2.0722E-04/
      DATA (KA(JT, 4, 7),JT=1,5) /
     &2.0223E-05,4.9973E-05,8.2293E-05,1.1822E-04,1.6484E-04/
      DATA (KA(JT, 5, 7),JT=1,5) /
     &1.8923E-05,4.1445E-05,6.4003E-05,9.2899E-05,1.3171E-04/
      DATA (KA(JT, 6, 7),JT=1,5) /
     &1.5326E-05,3.0718E-05,4.7457E-05,6.8025E-05,9.5982E-05/
      DATA (KA(JT, 7, 7),JT=1,5) /
     &1.2448E-05,2.1715E-05,3.2987E-05,4.9690E-05,7.5010E-05/
      DATA (KA(JT, 8, 7),JT=1,5) /
     &1.0066E-05,1.7102E-05,2.7164E-05,4.3976E-05,6.9078E-05/
      DATA (KA(JT, 9, 7),JT=1,5) /
     &1.1685E-05,2.0037E-05,3.5620E-05,5.8499E-05,9.0997E-05/
      DATA (KA(JT,10, 7),JT=1,5) /
     &1.5861E-05,2.8659E-05,5.0802E-05,8.4995E-05,1.3698E-04/
      DATA (KA(JT,11, 7),JT=1,5) /
     &2.1379E-05,3.8980E-05,6.8341E-05,1.1084E-04,1.6745E-04/
      DATA (KA(JT,12, 7),JT=1,5) /
     &2.2487E-05,4.0976E-05,7.1749E-05,1.1325E-04,1.7051E-04/
      DATA (KA(JT,13, 7),JT=1,5) /
     &2.0952E-05,3.7773E-05,6.5636E-05,1.0928E-04,1.6488E-04/
      DATA (KA(JT, 1, 8),JT=1,5) /
     &1.0722E-04,2.7983E-04,4.9965E-04,7.0430E-04,9.5168E-04/
      DATA (KA(JT, 2, 8),JT=1,5) /
     &9.2566E-05,2.4429E-04,3.9143E-04,5.5037E-04,7.4482E-04/
      DATA (KA(JT, 3, 8),JT=1,5) /
     &8.2611E-05,1.7009E-04,2.5121E-04,3.5806E-04,4.9588E-04/
      DATA (KA(JT, 4, 8),JT=1,5) /
     &7.9199E-05,1.3718E-04,2.0767E-04,3.0111E-04,4.2301E-04/
      DATA (KA(JT, 5, 8),JT=1,5) /
     &6.6965E-05,1.0994E-04,1.6780E-04,2.4484E-04,3.4718E-04/
      DATA (KA(JT, 6, 8),JT=1,5) /
     &5.1557E-05,8.4788E-05,1.3259E-04,1.9727E-04,2.8537E-04/
      DATA (KA(JT, 7, 8),JT=1,5) /
     &3.8653E-05,6.5013E-05,1.0364E-04,1.5866E-04,2.2830E-04/
      DATA (KA(JT, 8, 8),JT=1,5) /
     &2.8949E-05,4.9620E-05,8.2718E-05,1.3000E-04,1.9256E-04/
      DATA (KA(JT, 9, 8),JT=1,5) /
     &2.6449E-05,4.6951E-05,7.7311E-05,1.2263E-04,1.9501E-04/
      DATA (KA(JT,10, 8),JT=1,5) /
     &4.1706E-05,7.2947E-05,1.1853E-04,1.7821E-04,2.7161E-04/
      DATA (KA(JT,11, 8),JT=1,5) /
     &4.6073E-05,7.9291E-05,1.2399E-04,2.0469E-04,3.0165E-04/
      DATA (KA(JT,12, 8),JT=1,5) /
     &4.9634E-05,8.1819E-05,1.2723E-04,2.1479E-04,3.2406E-04/
      DATA (KA(JT,13, 8),JT=1,5) /
     &4.8914E-05,8.2845E-05,1.3095E-04,2.1611E-04,3.1389E-04/
      DATA (KA(JT, 1, 9),JT=1,5) /
     &7.8561E-04,1.1643E-03,1.6394E-03,2.2582E-03,3.0560E-03/
      DATA (KA(JT, 2, 9),JT=1,5) /
     &6.6025E-04,9.8571E-04,1.4034E-03,1.9479E-03,2.6634E-03/
      DATA (KA(JT, 3, 9),JT=1,5) /
     &5.1307E-04,7.6204E-04,1.0925E-03,1.5312E-03,2.1163E-03/
      DATA (KA(JT, 4, 9),JT=1,5) /
     &3.4762E-04,5.0219E-04,7.2255E-04,1.0302E-03,1.4514E-03/
      DATA (KA(JT, 5, 9),JT=1,5) /
     &2.1712E-04,3.4419E-04,5.2965E-04,7.8732E-04,1.1464E-03/
      DATA (KA(JT, 6, 9),JT=1,5) /
     &1.8112E-04,2.9769E-04,4.6916E-04,7.0360E-04,1.0307E-03/
      DATA (KA(JT, 7, 9),JT=1,5) /
     &1.5449E-04,2.5935E-04,4.1089E-04,6.2682E-04,9.3587E-04/
      DATA (KA(JT, 8, 9),JT=1,5) /
     &1.4056E-04,2.4062E-04,3.8562E-04,5.9348E-04,8.8749E-04/
      DATA (KA(JT, 9, 9),JT=1,5) /
     &1.4311E-04,2.5683E-04,4.3997E-04,6.9753E-04,1.0500E-03/
      DATA (KA(JT,10, 9),JT=1,5) /
     &1.3733E-04,2.3478E-04,3.4047E-04,4.8048E-04,6.5263E-04/
      DATA (KA(JT,11, 9),JT=1,5) /
     &1.3199E-04,1.9086E-04,2.6427E-04,3.3652E-04,4.6218E-04/
      DATA (KA(JT,12, 9),JT=1,5) /
     &1.2421E-04,1.8123E-04,2.4759E-04,3.0949E-04,4.1038E-04/
      DATA (KA(JT,13, 9),JT=1,5) /
     &1.2135E-04,1.9021E-04,2.6678E-04,3.4185E-04,4.8239E-04/
      DATA (KA(JT, 1,10),JT=1,5) /
     &2.0319E-03,2.8954E-03,4.0208E-03,5.4666E-03,7.2307E-03/
      DATA (KA(JT, 2,10),JT=1,5) /
     &1.8594E-03,2.6055E-03,3.5896E-03,4.9149E-03,6.5643E-03/
      DATA (KA(JT, 3,10),JT=1,5) /
     &1.4858E-03,2.1438E-03,3.0067E-03,4.1237E-03,5.5345E-03/
      DATA (KA(JT, 4,10),JT=1,5) /
     &1.1237E-03,1.6648E-03,2.4078E-03,3.3725E-03,4.5628E-03/
      DATA (KA(JT, 5,10),JT=1,5) /
     &8.5681E-04,1.0371E-03,1.2665E-03,1.6242E-03,2.0962E-03/
      DATA (KA(JT, 6,10),JT=1,5) /
     &4.1878E-04,6.5245E-04,8.8673E-04,1.4273E-03,2.1165E-03/
      DATA (KA(JT, 7,10),JT=1,5) /
     &4.0657E-04,6.7784E-04,1.0299E-03,1.5982E-03,2.4416E-03/
      DATA (KA(JT, 8,10),JT=1,5) /
     &3.7189E-04,6.5876E-04,1.1259E-03,1.8690E-03,2.8514E-03/
      DATA (KA(JT, 9,10),JT=1,5) /
     &4.4113E-04,8.4598E-04,1.1991E-03,1.8860E-03,2.5835E-03/
      DATA (KA(JT,10,10),JT=1,5) /
     &1.8203E-04,4.6909E-06,8.8196E-06,8.3149E-05,1.6489E-04/
      DATA (KA(JT,11,10),JT=1,5) /
     &2.4843E-06,5.0211E-06,4.0342E-05,1.0733E-04,1.3735E-04/
      DATA (KA(JT,12,10),JT=1,5) /
     &2.2109E-06,4.6775E-06,6.3563E-05,8.8385E-05,1.1814E-04/
      DATA (KA(JT,13,10),JT=1,5) /
     &1.0306E-04,2.9167E-05,5.8184E-05,8.2616E-05,1.2141E-04/
      DATA (KA(JT, 1,11),JT=1,5) /
     &2.6851E-03,3.8621E-03,5.3296E-03,7.1411E-03,9.4750E-03/
      DATA (KA(JT, 2,11),JT=1,5) /
     &2.4213E-03,3.4979E-03,4.8929E-03,6.6432E-03,8.8031E-03/
      DATA (KA(JT, 3,11),JT=1,5) /
     &2.0817E-03,2.9708E-03,4.1510E-03,5.7232E-03,7.7624E-03/
      DATA (KA(JT, 4,11),JT=1,5) /
     &1.6627E-03,2.4521E-03,3.4576E-03,4.7721E-03,6.5543E-03/
      DATA (KA(JT, 5,11),JT=1,5) /
     &1.2664E-03,1.9577E-03,2.8702E-03,4.0767E-03,5.5807E-03/
      DATA (KA(JT, 6,11),JT=1,5) /
     &6.5451E-04,7.6752E-04,1.2109E-03,1.8526E-03,2.8298E-03/
      DATA (KA(JT, 7,11),JT=1,5) /
     &4.8621E-04,7.7329E-04,1.3520E-03,2.1779E-03,3.1034E-03/
      DATA (KA(JT, 8,11),JT=1,5) /
     &4.3573E-04,8.1759E-04,1.5409E-03,2.1798E-03,3.1170E-03/
      DATA (KA(JT, 9,11),JT=1,5) /
     &5.3220E-04,6.5242E-04,1.0365E-03,8.6351E-04,8.5932E-04/
      DATA (KA(JT,10,11),JT=1,5) /
     &4.1711E-06,8.9963E-06,1.7277E-05,3.1054E-05,5.1955E-05/
      DATA (KA(JT,11,11),JT=1,5) /
     &4.2641E-06,9.2786E-06,1.7917E-05,3.2294E-05,1.1099E-04/
      DATA (KA(JT,12,11),JT=1,5) /
     &4.4244E-06,9.4799E-06,1.8618E-05,7.5019E-05,1.5478E-04/
      DATA (KA(JT,13,11),JT=1,5) /
     &4.4439E-06,9.5554E-06,3.7663E-05,9.5587E-05,1.4453E-04/
      DATA (KA(JT, 1,12),JT=1,5) /
     &3.5676E-03,4.9715E-03,6.8023E-03,9.2475E-03,1.2425E-02/
      DATA (KA(JT, 2,12),JT=1,5) /
     &3.3730E-03,4.7958E-03,6.6635E-03,9.0736E-03,1.2194E-02/
      DATA (KA(JT, 3,12),JT=1,5) /
     &2.8824E-03,4.1856E-03,5.9756E-03,8.2464E-03,1.1067E-02/
      DATA (KA(JT, 4,12),JT=1,5) /
     &2.4288E-03,3.5141E-03,5.0677E-03,7.1261E-03,9.7127E-03/
      DATA (KA(JT, 5,12),JT=1,5) /
     &1.9807E-03,2.9284E-03,4.2016E-03,5.9142E-03,8.1484E-03/
      DATA (KA(JT, 6,12),JT=1,5) /
     &1.4728E-03,2.2453E-03,3.0533E-03,3.8340E-03,4.6395E-03/
      DATA (KA(JT, 7,12),JT=1,5) /
     &5.6245E-04,9.9265E-04,1.6138E-03,2.6180E-03,3.5983E-03/
      DATA (KA(JT, 8,12),JT=1,5) /
     &5.6232E-04,1.0725E-03,1.5736E-03,2.7015E-03,4.5325E-03/
      DATA (KA(JT, 9,12),JT=1,5) /
     &3.8503E-04,4.5325E-04,3.4069E-05,5.9217E-05,9.6016E-05/
      DATA (KA(JT,10,12),JT=1,5) /
     &6.7276E-06,1.4849E-05,2.8992E-05,5.2371E-05,8.7139E-05/
      DATA (KA(JT,11,12),JT=1,5) /
     &7.7381E-06,1.7002E-05,3.3523E-05,6.0232E-05,1.0004E-04/
      DATA (KA(JT,12,12),JT=1,5) /
     &8.5790E-06,1.9107E-05,3.7746E-05,6.8157E-05,1.1211E-04/
      DATA (KA(JT,13,12),JT=1,5) /
     &9.3399E-06,2.1875E-05,4.3407E-05,7.7729E-05,1.5956E-04/
      DATA (KA(JT, 1,13),JT=1,5) /
     &4.3788E-03,6.3181E-03,8.9543E-03,1.2364E-02,1.6648E-02/
      DATA (KA(JT, 2,13),JT=1,5) /
     &4.4160E-03,6.2758E-03,8.7769E-03,1.2121E-02,1.6531E-02/
      DATA (KA(JT, 3,13),JT=1,5) /
     &3.9967E-03,5.8737E-03,8.1369E-03,1.1188E-02,1.5344E-02/
      DATA (KA(JT, 4,13),JT=1,5) /
     &3.4004E-03,5.1547E-03,7.3735E-03,1.0182E-02,1.3939E-02/
      DATA (KA(JT, 5,13),JT=1,5) /
     &2.9021E-03,4.3823E-03,6.4495E-03,9.1509E-03,1.2669E-02/
      DATA (KA(JT, 6,13),JT=1,5) /
     &2.4396E-03,3.6407E-03,5.2497E-03,7.5439E-03,1.0675E-02/
      DATA (KA(JT, 7,13),JT=1,5) /
     &1.5932E-03,1.8719E-03,2.2033E-03,2.5091E-03,4.1046E-03/
      DATA (KA(JT, 8,13),JT=1,5) /
     &8.1439E-04,1.2125E-03,1.8190E-03,2.8987E-03,3.6148E-03/
      DATA (KA(JT, 9,13),JT=1,5) /
     &2.9962E-04,2.5888E-05,4.6085E-05,7.7045E-05,1.2285E-04/
      DATA (KA(JT,10,13),JT=1,5) /
     &9.2091E-06,1.8817E-05,3.5290E-05,6.2611E-05,1.0050E-04/
      DATA (KA(JT,11,13),JT=1,5) /
     &8.8922E-06,1.8844E-05,3.7039E-05,6.5193E-05,1.0998E-04/
      DATA (KA(JT,12,13),JT=1,5) /
     &9.1227E-06,2.0282E-05,3.9304E-05,7.0536E-05,1.1697E-04/
      DATA (KA(JT,13,13),JT=1,5) /
     &9.3384E-06,2.0460E-05,4.0361E-05,7.2805E-05,1.1815E-04/
      DATA (KA(JT, 1,14),JT=1,5) /
     &5.8176E-03,8.5593E-03,1.2130E-02,1.6770E-02,2.2682E-02/
      DATA (KA(JT, 2,14),JT=1,5) /
     &5.7661E-03,8.5728E-03,1.2312E-02,1.7131E-02,2.3220E-02/
      DATA (KA(JT, 3,14),JT=1,5) /
     &5.4299E-03,7.9187E-03,1.1613E-02,1.6480E-02,2.2670E-02/
      DATA (KA(JT, 4,14),JT=1,5) /
     &4.9805E-03,7.1731E-03,1.0470E-02,1.5114E-02,2.1203E-02/
      DATA (KA(JT, 5,14),JT=1,5) /
     &4.4098E-03,6.5055E-03,9.4518E-03,1.3613E-02,1.9313E-02/
      DATA (KA(JT, 6,14),JT=1,5) /
     &3.7762E-03,5.6862E-03,8.4288E-03,1.2169E-02,1.7260E-02/
      DATA (KA(JT, 7,14),JT=1,5) /
     &3.2464E-03,4.8124E-03,6.8092E-03,9.1900E-03,1.1370E-02/
      DATA (KA(JT, 8,14),JT=1,5) /
     &1.1521E-03,1.1423E-03,1.7687E-03,1.5659E-03,2.2329E-03/
      DATA (KA(JT, 9,14),JT=1,5) /
     &1.9075E-05,4.4531E-05,8.9053E-05,1.1868E-04,1.6905E-04/
      DATA (KA(JT,10,14),JT=1,5) /
     &1.1271E-05,2.8156E-05,6.0244E-05,8.6340E-05,1.3123E-04/
      DATA (KA(JT,11,14),JT=1,5) /
     &1.1591E-05,2.8030E-05,4.8484E-05,7.4281E-05,1.1022E-04/
      DATA (KA(JT,12,14),JT=1,5) /
     &1.1274E-05,2.5700E-05,4.0234E-05,6.2656E-05,9.8261E-05/
      DATA (KA(JT,13,14),JT=1,5) /
     &1.0130E-05,1.8686E-05,3.2466E-05,5.4260E-05,8.5980E-05/
      DATA (KA(JT, 1,15),JT=1,5) /
     &8.0623E-03,1.1623E-02,1.6754E-02,2.3990E-02,3.4103E-02/
      DATA (KA(JT, 2,15),JT=1,5) /
     &8.1053E-03,1.1698E-02,1.6865E-02,2.3848E-02,3.3543E-02/
      DATA (KA(JT, 3,15),JT=1,5) /
     &7.5058E-03,1.0852E-02,1.5814E-02,2.2160E-02,3.0813E-02/
      DATA (KA(JT, 4,15),JT=1,5) /
     &6.7816E-03,9.9478E-03,1.4382E-02,2.0576E-02,2.8388E-02/
      DATA (KA(JT, 5,15),JT=1,5) /
     &6.3211E-03,9.1146E-03,1.3301E-02,1.9331E-02,2.6874E-02/
      DATA (KA(JT, 6,15),JT=1,5) /
     &5.8531E-03,8.4323E-03,1.2188E-02,1.7787E-02,2.5518E-02/
      DATA (KA(JT, 7,15),JT=1,5) /
     &5.3028E-03,7.8385E-03,1.1331E-02,1.6285E-02,2.3804E-02/
      DATA (KA(JT, 8,15),JT=1,5) /
     &4.7139E-03,4.9648E-03,2.7936E-03,2.1248E-03,1.7982E-03/
      DATA (KA(JT, 9,15),JT=1,5) /
     &6.9507E-07,1.4412E-06,2.8345E-06,1.0911E-04,2.4370E-04/
      DATA (KA(JT,10,15),JT=1,5) /
     &3.6501E-07,8.3446E-07,1.6843E-06,6.4065E-05,1.5410E-04/
      DATA (KA(JT,11,15),JT=1,5) /
     &2.8886E-07,6.6813E-07,2.2629E-05,7.8818E-05,1.6163E-04/
      DATA (KA(JT,12,15),JT=1,5) /
     &2.6037E-07,5.5485E-07,3.1734E-05,8.0123E-05,1.4669E-04/
      DATA (KA(JT,13,15),JT=1,5) /
     &2.3446E-07,1.2097E-05,3.4961E-05,7.1280E-05,1.2611E-04/
      DATA (KA(JT, 1,16),JT=1,5) /
     &8.7570E-03,1.2357E-02,1.9959E-02,3.2636E-02,5.0897E-02/
      DATA (KA(JT, 2,16),JT=1,5) /
     &9.0825E-03,1.2808E-02,1.9776E-02,3.3132E-02,5.2704E-02/
      DATA (KA(JT, 3,16),JT=1,5) /
     &8.8201E-03,1.2594E-02,1.7588E-02,3.0181E-02,4.9544E-02/
      DATA (KA(JT, 4,16),JT=1,5) /
     &8.3170E-03,1.2140E-02,1.6975E-02,2.5787E-02,4.3638E-02/
      DATA (KA(JT, 5,16),JT=1,5) /
     &7.7605E-03,1.1646E-02,1.6641E-02,2.2927E-02,3.7740E-02/
      DATA (KA(JT, 6,16),JT=1,5) /
     &7.0356E-03,1.0930E-02,1.6057E-02,2.2523E-02,3.2226E-02/
      DATA (KA(JT, 7,16),JT=1,5) /
     &6.7105E-03,1.0123E-02,1.5354E-02,2.2098E-02,3.0452E-02/
      DATA (KA(JT, 8,16),JT=1,5) /
     &6.7590E-03,9.3669E-03,1.4563E-02,1.3873E-02,1.5872E-03/
      DATA (KA(JT, 9,16),JT=1,5) /
     &5.9690E-07,1.4246E-06,2.9975E-06,4.2222E-06,7.0710E-06/
      DATA (KA(JT,10,16),JT=1,5) /
     &3.1073E-07,7.7259E-07,1.8451E-06,3.5923E-06,5.6864E-06/
      DATA (KA(JT,11,16),JT=1,5) /
     &2.5196E-07,6.5326E-07,1.5669E-06,3.1861E-06,5.6813E-06/
      DATA (KA(JT,12,16),JT=1,5) /
     &1.8633E-07,5.5942E-07,1.3020E-06,2.7030E-06,4.5791E-06/
      DATA (KA(JT,13,16),JT=1,5) /
     &1.4070E-07,4.5125E-07,1.0269E-06,2.1236E-06,3.8826E-06/

C     The array KA_Mxx contains the absorption coefficient for 
C     a minor species at the 16 chosen g-values for a reference pressure
C     level below 100~ mb.   The first index refers to temperature 
C     in 7.2 degree increments.  For instance, JT = 1 refers to a 
C     temperature of 188.0, JT = 2 refers to 195.2, etc. The second index 
C     runs over the g-channel (1 to 16).

      DATA (KA_MCO2(JT, 1),JT=1,19)  /
     & 1.45661e-05, 1.73337e-05, 2.06273e-05, 2.45466e-05, 2.92105e-05,
     & 3.47607e-05, 4.13654e-05, 4.92251e-05, 5.85781e-05, 6.97083e-05,
     & 8.29533e-05, 9.87149e-05, 1.17471e-04, 1.39792e-04, 1.66353e-04,
     & 1.97961e-04, 2.35574e-04, 2.80335e-04, 3.33600e-04/
      DATA (KA_MCO2(JT, 2),JT=1,19)  /
     & 9.96332e-06, 1.21229e-05, 1.47506e-05, 1.79478e-05, 2.18381e-05,
     & 2.65716e-05, 3.23310e-05, 3.93389e-05, 4.78658e-05, 5.82408e-05,
     & 7.08647e-05, 8.62250e-05, 1.04914e-04, 1.27655e-04, 1.55325e-04,
     & 1.88992e-04, 2.29957e-04, 2.79801e-04, 3.40448e-04/
      DATA (KA_MCO2(JT, 3),JT=1,19)  /
     & 1.14968e-05, 1.39890e-05, 1.70215e-05, 2.07115e-05, 2.52013e-05,
     & 3.06644e-05, 3.73118e-05, 4.54002e-05, 5.52420e-05, 6.72173e-05,
     & 8.17887e-05, 9.95188e-05, 1.21092e-04, 1.47343e-04, 1.79283e-04,
     & 2.18148e-04, 2.65438e-04, 3.22980e-04, 3.92995e-04/
      DATA (KA_MCO2(JT, 4),JT=1,19)  /
     & 1.02186e-05, 1.23232e-05, 1.48613e-05, 1.79222e-05, 2.16134e-05,
     & 2.60649e-05, 3.14332e-05, 3.79071e-05, 4.57145e-05, 5.51297e-05,
     & 6.64843e-05, 8.01773e-05, 9.66905e-05, 1.16605e-04, 1.40621e-04,
     & 1.69583e-04, 2.04510e-04, 2.46631e-04, 2.97426e-04/
      DATA (KA_MCO2(JT, 5),JT=1,19)  /
     & 1.03469e-05, 1.24680e-05, 1.50239e-05, 1.81037e-05, 2.18149e-05,
     & 2.62869e-05, 3.16756e-05, 3.81690e-05, 4.59935e-05, 5.54220e-05,
     & 6.67833e-05, 8.04737e-05, 9.69704e-05, 1.16849e-04, 1.40803e-04,
     & 1.69667e-04, 2.04448e-04, 2.46359e-04, 2.96861e-04/
      DATA (KA_MCO2(JT, 6),JT=1,19)  /
     & 1.71660e-05, 2.07334e-05, 2.50420e-05, 3.02461e-05, 3.65317e-05,
     & 4.41235e-05, 5.32930e-05, 6.43680e-05, 7.77446e-05, 9.39010e-05,
     & 1.13415e-04, 1.36984e-04, 1.65451e-04, 1.99835e-04, 2.41363e-04,
     & 2.91522e-04, 3.52104e-04, 4.25276e-04, 5.13654e-04/
      DATA (KA_MCO2(JT, 7),JT=1,19)  /
     & 4.78803e-05, 5.79395e-05, 7.01119e-05, 8.48418e-05, 1.02666e-04,
     & 1.24235e-04, 1.50336e-04, 1.81920e-04, 2.20139e-04, 2.66388e-04,
     & 3.22354e-04, 3.90077e-04, 4.72028e-04, 5.71197e-04, 6.91199e-04,
     & 8.36413e-04, 1.01214e-03, 1.22477e-03, 1.48209e-03/
      DATA (KA_MCO2(JT, 8),JT=1,19)  /
     & 1.27954e-04, 1.55281e-04, 1.88445e-04, 2.28692e-04, 2.77534e-04,
     & 3.36808e-04, 4.08741e-04, 4.96037e-04, 6.01977e-04, 7.30542e-04,
     & 8.86566e-04, 1.07591e-03, 1.30570e-03, 1.58456e-03, 1.92298e-03,
     & 2.33367e-03, 2.83208e-03, 3.43694e-03, 4.17097e-03/
      DATA (KA_MCO2(JT, 9),JT=1,19)  /
     & 2.93792e-05, 3.55109e-05, 4.29223e-05, 5.18805e-05, 6.27083e-05,
     & 7.57960e-05, 9.16151e-05, 1.10736e-04, 1.33847e-04, 1.61782e-04,
     & 1.95547e-04, 2.36359e-04, 2.85689e-04, 3.45315e-04, 4.17384e-04,
     & 5.04495e-04, 6.09787e-04, 7.37054e-04, 8.90882e-04/
      DATA (KA_MCO2(JT,10),JT=1,19)  /
     & 5.08569e-05, 6.24700e-05, 7.67350e-05, 9.42574e-05, 1.15781e-04,
     & 1.42220e-04, 1.74695e-04, 2.14587e-04, 2.63588e-04, 3.23778e-04,
     & 3.97712e-04, 4.88530e-04, 6.00085e-04, 7.37114e-04, 9.05433e-04,
     & 1.11219e-03, 1.36616e-03, 1.67812e-03, 2.06131e-03/
      DATA (KA_MCO2(JT,11),JT=1,19)  /
     & 4.82546e-06, 6.21462e-06, 8.00369e-06, 1.03078e-05, 1.32752e-05,
     & 1.70969e-05, 2.20188e-05, 2.83575e-05, 3.65211e-05, 4.70348e-05,
     & 6.05753e-05, 7.80138e-05, 1.00472e-04, 1.29397e-04, 1.66647e-04,
     & 2.14622e-04, 2.76407e-04, 3.55980e-04, 4.58459e-04/
      DATA (KA_MCO2(JT,12),JT=1,19)  /
     & 2.41346e-06, 2.96282e-06, 3.63723e-06, 4.46516e-06, 5.48153e-06,
     & 6.72926e-06, 8.26100e-06, 1.01414e-05, 1.24498e-05, 1.52837e-05,
     & 1.87627e-05, 2.30335e-05, 2.82765e-05, 3.47129e-05, 4.26144e-05,
     & 5.23144e-05, 6.42225e-05, 7.88410e-05, 9.67871e-05/
      DATA (KA_MCO2(JT,13),JT=1,19)  /
     & 2.76412e-06, 3.46195e-06, 4.33596e-06, 5.43062e-06, 6.80164e-06,
     & 8.51879e-06, 1.06695e-05, 1.33631e-05, 1.67367e-05, 2.09621e-05,
     & 2.62542e-05, 3.28824e-05, 4.11839e-05, 5.15813e-05, 6.46035e-05,
     & 8.09134e-05, 1.01341e-04, 1.26925e-04, 1.58969e-04/
      DATA (KA_MCO2(JT,14),JT=1,19)  /
     & 1.25126e-06, 1.54971e-06, 1.91935e-06, 2.37715e-06, 2.94416e-06,
     & 3.64640e-06, 4.51615e-06, 5.59335e-06, 6.92749e-06, 8.57985e-06,
     & 1.06263e-05, 1.31610e-05, 1.63001e-05, 2.01881e-05, 2.50034e-05,
     & 3.09672e-05, 3.83536e-05, 4.75018e-05, 5.88319e-05/
      DATA (KA_MCO2(JT,15),JT=1,19)  /
     & 1.59748e-06, 2.08378e-06, 2.71812e-06, 3.54557e-06, 4.62491e-06,
     & 6.03282e-06, 7.86932e-06, 1.02649e-05, 1.33897e-05, 1.74658e-05,
     & 2.27827e-05, 2.97182e-05, 3.87649e-05, 5.05657e-05, 6.59589e-05,
     & 8.60380e-05, 1.12230e-04, 1.46394e-04, 1.90959e-04/
      DATA (KA_MCO2(JT,16),JT=1,19)  /
     & 1.68148e-06, 2.17133e-06, 2.80388e-06, 3.62071e-06, 4.67549e-06,
     & 6.03756e-06, 7.79642e-06, 1.00677e-05, 1.30006e-05, 1.67879e-05,
     & 2.16786e-05, 2.79941e-05, 3.61493e-05, 4.66803e-05, 6.02792e-05,
     & 7.78398e-05, 1.00516e-04, 1.29799e-04, 1.67612e-04/

C     The array FORREF contains the coefficient of the water vapor
C     foreign-continuum (including the energy term).  The first 
C     index refers to reference temperature (296,260,224,260) and 
C     pressure (970,475,219,3 mbar) levels.  The second index 
C     runs over the g-channel (1 to 16).

      DATA (FORREF(1,IG),IG=1,16) /
     &7.5770e-06,9.9379e-06,1.3093e-05,1.8297e-05,2.2282e-05,2.9914e-05,
     &2.5843e-05,2.0398e-05,2.0893e-05,2.2125e-05,2.2140e-05,2.2979e-05,
     &2.3992e-05,2.2681e-05,2.6150e-05,2.6039e-05/
      DATA (FORREF(2,IG),IG=1,16) /
     &1.0920e-05,1.3945e-05,1.7575e-05,2.2476e-05,2.4160e-05,1.9989e-05,
     &1.7136e-05,1.6238e-05,1.4931e-05,1.4721e-05,2.1586e-05,2.2342e-05,
     &2.2267e-05,2.2015e-05,2.3625e-05,2.6554e-05/
      DATA (FORREF(3,IG),IG=1,16) /
     &1.7656e-05,1.9774e-05,2.2883e-05,2.2281e-05,1.6851e-05,1.4744e-05,
     &1.1625e-05,1.1125e-05,1.2115e-05,9.8493e-06,9.2946e-06,7.9853e-06,
     &7.4413e-06,7.4131e-06,7.2774e-06,6.4313e-06/
      DATA (FORREF(4,IG),IG=1,16) /
     &1.8168e-05,1.8969e-05,2.0661e-05,2.1397e-05,1.9798e-05,1.5483e-05,
     &1.2022e-05,1.0289e-05,9.9754e-06,9.7659e-06,9.4032e-06,9.1949e-06,
     &9.0533e-06,7.8250e-06,7.2746e-06,7.3254e-06/

C     The array SELFREF contains the coefficient of the water vapor
C     self-continuum (including the energy term).  The first index
C     refers to temperature in 7.2 degree increments.  For instance,
C     JT = 1 refers to a temperature of 245.6, JT = 2 refers to 252.8,
C     etc.  The second index runs over the g-channel (1 to 16).

      DATA (SELFREF(JT, 1),JT=1,10)  /
     & 7.27514e-02, 6.08849e-02, 5.09540e-02, 4.26429e-02, 3.56874e-02,
     & 2.98664e-02, 2.49949e-02, 2.09180e-02, 1.75061e-02, 1.46507e-02/
      DATA (SELFREF(JT, 2),JT=1,10)  /
     & 7.87151e-02, 6.61556e-02, 5.56000e-02, 4.67286e-02, 3.92728e-02,
     & 3.30065e-02, 2.77401e-02, 2.33140e-02, 1.95941e-02, 1.64677e-02/
      DATA (SELFREF(JT, 3),JT=1,10)  /
     & 8.41508e-02, 7.10869e-02, 6.00510e-02, 5.07284e-02, 4.28531e-02,
     & 3.62004e-02, 3.05805e-02, 2.58330e-02, 2.18226e-02, 1.84347e-02/
      DATA (SELFREF(JT, 4),JT=1,10)  /
     & 8.89079e-02, 7.57011e-02, 6.44560e-02, 5.48813e-02, 4.67290e-02,
     & 3.97876e-02, 3.38773e-02, 2.88450e-02, 2.45602e-02, 2.09119e-02/
      DATA (SELFREF(JT, 5),JT=1,10)  /
     & 8.85905e-02, 7.61002e-02, 6.53710e-02, 5.61544e-02, 4.82373e-02,
     & 4.14364e-02, 3.55944e-02, 3.05760e-02, 2.62651e-02, 2.25621e-02/
      DATA (SELFREF(JT, 6),JT=1,10)  /
     & 7.68513e-02, 6.82521e-02, 6.06150e-02, 5.38325e-02, 4.78089e-02,
     & 4.24594e-02, 3.77084e-02, 3.34890e-02, 2.97417e-02, 2.64138e-02/
      DATA (SELFREF(JT, 7),JT=1,10)  /
     & 7.26667e-02, 6.45152e-02, 5.72780e-02, 5.08527e-02, 4.51482e-02,
     & 4.00835e-02, 3.55871e-02, 3.15950e-02, 2.80507e-02, 2.49041e-02/
      DATA (SELFREF(JT, 8),JT=1,10)  /
     & 7.26582e-02, 6.37626e-02, 5.59560e-02, 4.91052e-02, 4.30932e-02,
     & 3.78172e-02, 3.31872e-02, 2.91240e-02, 2.55583e-02, 2.24291e-02/
      DATA (SELFREF(JT, 9),JT=1,10)  /
     & 6.96335e-02, 6.15896e-02, 5.44750e-02, 4.81822e-02, 4.26164e-02,
     & 3.76935e-02, 3.33392e-02, 2.94880e-02, 2.60816e-02, 2.30688e-02/
      DATA (SELFREF(JT,10),JT=1,10)  /
     & 6.80666e-02, 6.07002e-02, 5.41310e-02, 4.82728e-02, 4.30485e-02,
     & 3.83897e-02, 3.42350e-02, 3.05300e-02, 2.72259e-02, 2.42795e-02/
      DATA (SELFREF(JT,11),JT=1,10)  /
     & 8.58666e-02, 7.40375e-02, 6.38380e-02, 5.50436e-02, 4.74607e-02,
     & 4.09224e-02, 3.52849e-02, 3.04240e-02, 2.62327e-02, 2.26189e-02/
      DATA (SELFREF(JT,12),JT=1,10)  /
     & 8.63900e-02, 7.44945e-02, 6.42370e-02, 5.53919e-02, 4.77647e-02,
     & 4.11878e-02, 3.55164e-02, 3.06260e-02, 2.64090e-02, 2.27726e-02/
      DATA (SELFREF(JT,13),JT=1,10)  /
     & 8.70163e-02, 7.52253e-02, 6.50320e-02, 5.62199e-02, 4.86020e-02,
     & 4.20162e-02, 3.63229e-02, 3.14010e-02, 2.71461e-02, 2.34677e-02/
      DATA (SELFREF(JT,14),JT=1,10)  /
     & 8.82691e-02, 7.60144e-02, 6.54610e-02, 5.63728e-02, 4.85464e-02,
     & 4.18065e-02, 3.60023e-02, 3.10040e-02, 2.66996e-02, 2.29928e-02/
      DATA (SELFREF(JT,15),JT=1,10)  /
     & 9.00143e-02, 7.78959e-02, 6.74090e-02, 5.83339e-02, 5.04806e-02,
     & 4.36845e-02, 3.78034e-02, 3.27140e-02, 2.83098e-02, 2.44985e-02/
      DATA (SELFREF(JT,16),JT=1,10)  /
     & 9.61694e-02, 8.24239e-02, 7.06430e-02, 6.05459e-02, 5.18921e-02,
     & 4.44751e-02, 3.81183e-02, 3.26700e-02, 2.80004e-02, 2.39983e-02/