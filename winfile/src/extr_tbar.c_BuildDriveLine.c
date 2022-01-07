
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int bRefresh; scalar_t__ bValid; } ;
struct TYPE_4__ {TYPE_1__ sVolInfo; } ;
typedef int TCHAR ;
typedef int * LPTSTR ;
typedef scalar_t__ DWORD ;
typedef size_t DRIVEIND ;
typedef size_t DRIVE ;
typedef scalar_t__ BOOL ;


 scalar_t__ ALTNAME_REG ;
 int CHAR_COLON ;
 int CHAR_NULL ;
 int CHAR_SPACE ;
 scalar_t__ COUNTOF (int *) ;
 scalar_t__ DE_REGNAME ;
 int DRIVESET (int *,size_t) ;
 scalar_t__ GetVolShare (size_t,int **,scalar_t__) ;
 int IsCDRomDrive (size_t) ;
 int IsRemovableDrive (size_t) ;
 int StrNCpy (int *,int *,scalar_t__) ;
 TYPE_2__* aDriveInfo ;
 size_t* rgiDrive ;

VOID
BuildDriveLine(LPTSTR* ppszTemp, DRIVEIND driveInd,
   BOOL fGetFloppyLabel, DWORD dwType)
{
   static TCHAR szDrive[64];
   DRIVE drive;
   LPTSTR p;
   DWORD dwError;

   drive = rgiDrive[driveInd];






   if (fGetFloppyLabel || (!IsRemovableDrive(drive) && !IsCDRomDrive(drive)) ||
      (aDriveInfo[drive].sVolInfo.bValid && !aDriveInfo[drive].sVolInfo.bRefresh)) {

      if (dwError = GetVolShare(rgiDrive[driveInd], ppszTemp, dwType)) {

         if (DE_REGNAME == dwError) {

            goto UseRegName;
         }

         goto Failed;

      } else {




         if (ALTNAME_REG == dwType) {

UseRegName:

            p = *ppszTemp;

            *ppszTemp = szDrive;
            StrNCpy(szDrive+3, p, COUNTOF(szDrive)-4);

         } else {




            (*ppszTemp) -=3;
         }
      }

   } else {

Failed:

      *ppszTemp = szDrive;




      (*ppszTemp)[3]=CHAR_NULL;
   }

   DRIVESET(*ppszTemp,rgiDrive[driveInd]);

   (*ppszTemp)[1] = CHAR_COLON;
   (*ppszTemp)[2] = CHAR_SPACE;
}
