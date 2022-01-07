
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int WPARAM ;
struct TYPE_4__ {int DiskSize; } ;
struct TYPE_3__ {int projected_size; } ;
typedef int LPARAM ;
typedef int LONGLONG ;
typedef int HWND ;


 int ComboBox_AddStringU (int ,int ) ;
 scalar_t__ ComboBox_GetCurSel (int ) ;
 int ComboBox_ResetContent (int ) ;
 int ComboBox_SetCurSel (int ,int) ;
 int ComboBox_SetItemData (int ,int ,int) ;
 int GetDlgItem (int ,int ) ;
 int IDC_PERSISTENCE_SLIDER ;
 int IDC_PERSISTENCE_UNITS ;
 int IGNORE_RETVAL (int ) ;
 int MB ;
 scalar_t__ MSG_022 ;
 TYPE_2__ SelectedDrive ;
 int SendMessage (int ,int ,int ,int ) ;
 int SetPersistencePos (int) ;
 int TBM_SETPOS ;
 int TBM_SETRANGEMAX ;
 int TBM_SETRANGEMIN ;
 scalar_t__ TRUE ;
 int hDeviceList ;
 int hMainDialog ;
 TYPE_1__ img_report ;
 int lmprintf (scalar_t__) ;
 int min (int,int) ;
 int persistence_size ;
 int persistence_unit_selection ;

void SetPersistenceSize(void)
{
 int i, proposed_unit_selection = 0;
 LONGLONG base_unit = MB;
 HWND hCtrl;
 uint64_t max = 0, pos = 0;

 if (ComboBox_GetCurSel(hDeviceList) >= 0) {
  max = SelectedDrive.DiskSize - img_report.projected_size;
  persistence_size = min(persistence_size, max);
  pos = persistence_size;


  hCtrl = GetDlgItem(hMainDialog, IDC_PERSISTENCE_UNITS);
  IGNORE_RETVAL(ComboBox_ResetContent(hCtrl));
  for (i = 0; i < 3; i++) {
   IGNORE_RETVAL(ComboBox_SetItemData(hCtrl, ComboBox_AddStringU(hCtrl, lmprintf(MSG_022 + i)), i));

   if (SelectedDrive.DiskSize > 7 * base_unit)
    proposed_unit_selection = i;
   base_unit *= 1024;

   if (SelectedDrive.DiskSize < 2 * base_unit)
    break;
  }
  if (persistence_unit_selection < 0)
   persistence_unit_selection = proposed_unit_selection;

  IGNORE_RETVAL(ComboBox_SetCurSel(hCtrl, persistence_unit_selection));
  pos /= MB;
  max /= MB;
  for (i = 0; i < persistence_unit_selection; i++) {
   pos /= 1024;
   max /= 1024;
  }
 }

 hCtrl = GetDlgItem(hMainDialog, IDC_PERSISTENCE_SLIDER);


 SendMessage(hCtrl, TBM_SETRANGEMIN, (WPARAM)TRUE, (LPARAM)0);
 SendMessage(hCtrl, TBM_SETRANGEMAX, (WPARAM)TRUE, (LPARAM)max);
 SendMessage(hCtrl, TBM_SETPOS, (WPARAM)TRUE, (LPARAM)pos);

 SetPersistencePos(pos);
}
