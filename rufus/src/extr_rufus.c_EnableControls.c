
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_2__ {int is_iso; } ;
typedef int LPARAM ;
typedef int BOOL ;


 scalar_t__ BT_IMAGE ;
 scalar_t__ ComboBox_GetCurSel (int ) ;
 int EnableBootOptions (int,int) ;
 int EnableWindow (int ,int) ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int IDCANCEL ;
 scalar_t__ IDC_ABOUT ;
 int IDC_IMAGE_OPTION ;
 scalar_t__ IDC_LANG ;
 int IDC_LIST_USB_HDD ;
 scalar_t__ IDC_SETTINGS ;
 int IDS_CSM_HELP_TXT ;
 int SendMessage (int ,int ,int ,int ) ;
 int SetDlgItemTextU (int ,int ,int ) ;
 int TB_ENABLEBUTTON ;
 scalar_t__ boot_type ;
 int hAdvancedDeviceToolbar ;
 int hAdvancedFormatToolbar ;
 int hBootType ;
 int hClusterSize ;
 int hDeviceList ;
 int hFileSystem ;
 int hHashToolbar ;
 int hMainDialog ;
 int hMultiToolbar ;
 int hPartitionScheme ;
 int hSaveToolbar ;
 int hSelectImage ;
 int hStart ;
 int hTargetSystem ;
 int * image_path ;
 TYPE_1__ img_report ;
 int op_in_progress ;
 int uppercase_cancel ;
 int uppercase_close ;

__attribute__((used)) static void EnableControls(BOOL enable, BOOL remove_checkboxes)
{
 op_in_progress = !enable;



 EnableWindow(hDeviceList, enable);
 EnableWindow(hBootType, enable);
 EnableWindow(hSelectImage, enable);
 EnableWindow(GetDlgItem(hMainDialog, IDC_LIST_USB_HDD), enable);
 EnableWindow(hAdvancedDeviceToolbar, enable);
 EnableWindow(hAdvancedFormatToolbar, enable);
 SendMessage(hMultiToolbar, TB_ENABLEBUTTON, (WPARAM)IDC_LANG, (LPARAM)enable);
 SendMessage(hMultiToolbar, TB_ENABLEBUTTON, (WPARAM)IDC_ABOUT, (LPARAM)enable);
 SendMessage(hMultiToolbar, TB_ENABLEBUTTON, (WPARAM)IDC_SETTINGS, (LPARAM)enable);


 EnableWindow(hHashToolbar, enable && (boot_type == BT_IMAGE) && (image_path != ((void*)0)));


 SetDlgItemTextU(hMainDialog, IDCANCEL, enable ? uppercase_close : uppercase_cancel);


 enable = (ComboBox_GetCurSel(hDeviceList) < 0) ? FALSE : enable;
 EnableWindow(GetDlgItem(hMainDialog, IDC_IMAGE_OPTION), enable);
 EnableWindow(hSaveToolbar, enable);


 enable = ((boot_type == BT_IMAGE) && (image_path == ((void*)0))) ? FALSE : enable;
 EnableWindow(hStart, enable);
 EnableBootOptions(enable, remove_checkboxes);


 enable = ((boot_type == BT_IMAGE) && (image_path != ((void*)0)) && (!img_report.is_iso)) ? FALSE : enable;
 EnableWindow(hPartitionScheme, enable);
 EnableWindow(hTargetSystem, enable);
 EnableWindow(GetDlgItem(hMainDialog, IDS_CSM_HELP_TXT), enable);
 EnableWindow(hFileSystem, enable);
 EnableWindow(hClusterSize, enable);
}
