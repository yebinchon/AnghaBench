
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int is_iso; scalar_t__ is_bootable_img; } ;
typedef int BOOL ;


 scalar_t__ BT_IMAGE ;
 scalar_t__ ComboBox_GetCurSel (int ) ;
 int EnableExtendedLabel (int,int) ;
 int EnableMBRBootOptions (int,int) ;
 int EnableQuickFormat (int,int) ;
 int EnableWindow (int ,int) ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 scalar_t__ HAS_PERSISTENCE (TYPE_1__) ;
 int IDC_BAD_BLOCKS ;
 int IDC_IMAGE_OPTION ;
 int IDC_LABEL ;
 int IDC_NB_PASSES ;
 int IDC_PERSISTENCE_SIZE ;
 int IDC_PERSISTENCE_SLIDER ;
 int IDC_PERSISTENCE_UNITS ;
 scalar_t__ IS_DD_ONLY (TYPE_1__) ;
 int SetPersistenceSize () ;
 int TRUE ;
 scalar_t__ boot_type ;
 int hDeviceList ;
 int hMainDialog ;
 int * image_path ;
 TYPE_1__ img_report ;
 scalar_t__ persistence_size ;

__attribute__((used)) static void EnableBootOptions(BOOL enable, BOOL remove_checkboxes)
{
 BOOL actual_enable_bb, actual_enable = enable;


 if (ComboBox_GetCurSel(hDeviceList) < 0)
  actual_enable = FALSE;

 if ((boot_type == BT_IMAGE) && (image_path == ((void*)0)))
  actual_enable = FALSE;
 actual_enable_bb = actual_enable;

 if ((boot_type == BT_IMAGE) && (img_report.is_bootable_img) && (!img_report.is_iso))
  actual_enable = FALSE;

 EnableWindow(GetDlgItem(hMainDialog, IDC_IMAGE_OPTION), actual_enable);
 EnableWindow(GetDlgItem(hMainDialog, IDC_PERSISTENCE_SLIDER), actual_enable);

 if ((image_path != ((void*)0)) && HAS_PERSISTENCE(img_report))
  SetPersistenceSize();
 EnableWindow(GetDlgItem(hMainDialog, IDC_PERSISTENCE_SIZE), (persistence_size != 0) && actual_enable);
 EnableWindow(GetDlgItem(hMainDialog, IDC_PERSISTENCE_UNITS), (persistence_size != 0) && actual_enable);
 EnableMBRBootOptions(actual_enable, remove_checkboxes);

 EnableWindow(GetDlgItem(hMainDialog, IDC_LABEL), actual_enable);
 if (boot_type == BT_IMAGE) {
  if (IS_DD_ONLY(img_report))
   remove_checkboxes = TRUE;
  else if (image_path == ((void*)0))
   remove_checkboxes = FALSE;
 }
 EnableQuickFormat(actual_enable, remove_checkboxes);
 EnableExtendedLabel(actual_enable, remove_checkboxes);
 EnableWindow(GetDlgItem(hMainDialog, IDC_BAD_BLOCKS), actual_enable_bb);
 EnableWindow(GetDlgItem(hMainDialog, IDC_NB_PASSES), actual_enable_bb);
}
