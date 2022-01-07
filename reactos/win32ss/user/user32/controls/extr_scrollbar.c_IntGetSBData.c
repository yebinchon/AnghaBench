
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WND ;
struct TYPE_8__ {int Vert; int Horz; } ;
struct TYPE_7__ {int SBCalc; } ;
struct TYPE_6__ {int cbwndExtra; int pSBInfo; } ;
typedef int SBWND ;
typedef TYPE_1__* PWND ;
typedef TYPE_2__* PSBWND ;
typedef TYPE_3__* PSBINFO ;
typedef int * PSBDATA ;
typedef int INT ;


 TYPE_3__* DesktopPtrToUser (int ) ;
 int ERR (char*) ;




__attribute__((used)) static PSBDATA
IntGetSBData(PWND pwnd, INT Bar)
{
   PSBWND pSBWnd;
   PSBINFO pSBInfo;

   pSBInfo = DesktopPtrToUser(pwnd->pSBInfo);
   switch (Bar)
   {
       case 129:
         return &pSBInfo->Horz;
       case 128:
         return &pSBInfo->Vert;
       case 130:
         if ( pwnd->cbwndExtra < (sizeof(SBWND)-sizeof(WND)) )
         {
            ERR("IntGetSBData Wrong Extra bytes for CTL Scrollbar!\n");
            return 0;
         }
         pSBWnd = (PSBWND)pwnd;
         return (PSBDATA)&pSBWnd->SBCalc;
       default:
            ERR("IntGetSBData Bad Bar!\n");
   }
   return ((void*)0);
}
