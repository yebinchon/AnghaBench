
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_4__ {TYPE_1__* ClusterSize; } ;
struct TYPE_3__ {int Allowed; int Default; } ;
typedef int BOOL ;


 char** ClusterSizeLabel ;
 int ComboBox_AddStringU (int ,char*) ;
 int ComboBox_ResetContent (int ) ;
 int ComboBox_SetCurSel (int ,int) ;
 int ComboBox_SetItemData (int ,int ,int) ;
 int FALSE ;
 int FS_MAX ;
 int IGNORE_RETVAL (int ) ;
 int MSG_030 ;
 TYPE_2__ SelectedDrive ;
 int TRUE ;
 int hClusterSize ;
 char* lmprintf (int ,char*) ;

__attribute__((used)) static BOOL SetClusterSizes(int FSType)
{
 char* szClustSize;
 int i, k, default_index = 0;
 ULONG j;

 IGNORE_RETVAL(ComboBox_ResetContent(hClusterSize));

 if ((FSType < 0) || (FSType >= FS_MAX)) {
  return FALSE;
 }

 if ((SelectedDrive.ClusterSize[FSType].Allowed == 0)
  || (SelectedDrive.ClusterSize[FSType].Default == 0)) {
  return FALSE;
 }

 for (i = 0, j = 0x100, k = 0; j<0x10000000; i++, j <<= 1) {
  if (j & SelectedDrive.ClusterSize[FSType].Allowed) {
   if (j == SelectedDrive.ClusterSize[FSType].Default) {
    szClustSize = lmprintf(MSG_030, ClusterSizeLabel[i]);
    default_index = k;
   } else {
    szClustSize = ClusterSizeLabel[i];
   }
   IGNORE_RETVAL(ComboBox_SetItemData(hClusterSize, ComboBox_AddStringU(hClusterSize, szClustSize), j));
   k++;
  }
 }

 IGNORE_RETVAL(ComboBox_SetCurSel(hClusterSize, default_index));
 return TRUE;
}
