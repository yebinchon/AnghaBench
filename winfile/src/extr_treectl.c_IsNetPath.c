
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {void* bShareChkTried; void* bShareChkFail; } ;
struct TYPE_5__ {int dwNetType; } ;
typedef int TCHAR ;
typedef TYPE_1__* PDNODE ;
typedef int DWORD ;
typedef size_t DRIVE ;
typedef int BOOL ;


 size_t DRIVEID (int *) ;
 int FALSE ;
 int GetTreePath (TYPE_1__*,int *) ;
 int MAXPATHLEN ;
 void* TRUE ;
 int WAITNET_TYPELOADED ;
 scalar_t__ WN_SUCCESS ;
 scalar_t__ WNetGetDirectoryType (int *,int *,int) ;
 TYPE_2__* aDriveInfo ;

BOOL
IsNetPath(PDNODE pNode)
{

   TCHAR szPath[MAXPATHLEN * 2];
   DWORD dwType;
   DRIVE drive;


   if (!WAITNET_TYPELOADED)
      return FALSE;





   if (pNode->dwNetType == (DWORD)-1)
   {
      GetTreePath(pNode, szPath);
      drive = DRIVEID(szPath);

      if (!aDriveInfo[drive].bShareChkFail &&
          WNetGetDirectoryType( szPath,
                                &dwType,
                                !aDriveInfo[drive].bShareChkTried ) == WN_SUCCESS)
      {
         pNode->dwNetType = dwType;
      }
      else
      {
         pNode->dwNetType = 0;
         aDriveInfo[drive].bShareChkFail = TRUE;
      }

      aDriveInfo[drive].bShareChkTried = TRUE;
   }

   return pNode->dwNetType;
}
