
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int LONG ;


 scalar_t__ BT_IMAGE ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int IDC_PERSISTENCE_SIZE ;
 int MSG_124 ;
 int SetWindowTextU (int ,char*) ;
 int TRUE ;
 int TogglePersistenceControls (int ) ;
 int app_changed_size ;
 scalar_t__ boot_type ;
 int hMainDialog ;
 int lmprintf (int ) ;
 int static_sprintf (char*,char*,int ) ;

void SetPersistencePos(uint64_t pos)
{
 char tmp[64];

 if ((boot_type == BT_IMAGE) && (pos != 0)) {
  TogglePersistenceControls(TRUE);
  static_sprintf(tmp, "%ld", (LONG)pos);
 } else {
  TogglePersistenceControls(FALSE);
  static_sprintf(tmp, "0 (%s)", lmprintf(MSG_124));
 }
 app_changed_size = TRUE;
 SetWindowTextU(GetDlgItem(hMainDialog, IDC_PERSISTENCE_SIZE), tmp);
}
