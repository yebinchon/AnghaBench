
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t dwVolNameMax; int * szVolNameMinusFour; } ;
typedef int * LPTSTR ;
typedef scalar_t__ DWORD ;
typedef size_t DRIVE ;
typedef scalar_t__ BOOL ;


 int CHAR_NULL ;
 int CHAR_OPENBRACK ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GETRETVAL (int ,size_t) ;
 int SZ_CLOSEBRACK ;
 int U_VolInfo (size_t) ;
 int VolInfo ;
 TYPE_1__* aDriveInfo ;
 int lstrcat (int *,int ) ;

DWORD
GetVolumeLabel(DRIVE drive, LPTSTR* ppszVol, BOOL bBrackets)
{
   U_VolInfo(drive);

   *ppszVol = aDriveInfo[drive].szVolNameMinusFour+4;

   if (GETRETVAL(VolInfo,drive) || !**ppszVol) {

      return GETRETVAL(VolInfo,drive);
   }

   (*ppszVol)[aDriveInfo[drive].dwVolNameMax] = CHAR_NULL;

   if (bBrackets) {

      (*ppszVol)--;
      (*ppszVol)[0] = CHAR_OPENBRACK;

      lstrcat(*ppszVol, SZ_CLOSEBRACK);
   }
   return ERROR_SUCCESS;
}
