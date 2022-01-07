
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 int ComboBox_GetCount (int ) ;
 int ComboBox_GetItemData (int ,int) ;
 int ComboBox_SetCurSel (int ,int) ;
 int IGNORE_RETVAL (int ) ;

void SetComboEntry(HWND hDlg, int data)
{
 int i, nb_entries = ComboBox_GetCount(hDlg);

 if (nb_entries <= 0)
  return;
 for (i = 0; i < nb_entries; i++) {
  if (ComboBox_GetItemData(hDlg, i) == data) {
   IGNORE_RETVAL(ComboBox_SetCurSel(hDlg, i));
   return;
  }
 }
 if (i == nb_entries)
  IGNORE_RETVAL(ComboBox_SetCurSel(hDlg, 0));
}
