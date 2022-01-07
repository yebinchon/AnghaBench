
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {long QuadPart; int LowPart; } ;
typedef int TCHAR ;
typedef int * LPTSTR ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef size_t INT ;
typedef int DWORD ;


 scalar_t__ CHAR_ZERO ;
 int COUNTOF (int *) ;
 int * LOWORD (int) ;
 int LoadString (int ,int ,int *,int ) ;
 int * SZ_PERCENTD ;
 int hAppInstance ;
 int * pdwOrders ;
 int szDecimal ;
 scalar_t__* szFormat ;
 int wsprintf (int *,int *,int,...) ;

LPTSTR
ShortSizeFormatInternal(LPTSTR szBuf, LARGE_INTEGER qw)
{
   INT i;
   UINT uInt, uLen, uDec;
   TCHAR szTemp[10], szOrder[20];

   LARGE_INTEGER qConstant;
   DWORD dw;

   qConstant.QuadPart = 1024L;

   if (qw.QuadPart < qConstant.QuadPart)
   {
      wsprintf(szTemp, SZ_PERCENTD, LOWORD(qw.LowPart));
      i = 0;
      goto AddOrder;
   }

   qConstant.QuadPart = (1024L * 1000L - 1);

   for ( i = 1;
         (qw.QuadPart > qConstant.QuadPart);
   qw.QuadPart = qw.QuadPart / 1024L, ++i)


      ;

   dw = qw.LowPart;

   uInt = (UINT) (dw / 1024);
   uLen = wsprintf(szTemp, SZ_PERCENTD, uInt);
   if (uLen < 3) {
      uDec = (dw - uInt * 1024L) * 1000 / 1024;





      uDec /= 10;
      if (uLen == 2) {
         uDec /= 10;
      }





      szFormat[4] = CHAR_ZERO + 3 - uLen;
      uLen += wsprintf(szTemp+uLen, szFormat, szDecimal, uDec);
   }

AddOrder:
   LoadString(hAppInstance, pdwOrders[i], szOrder, COUNTOF(szOrder));
   wsprintf(szBuf, szOrder, szTemp);

   return(szBuf);
}
