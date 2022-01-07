
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int* proposed_label; } ;
struct TYPE_3__ {int usb_label; } ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 TYPE_2__ SelectedDrive ;
 scalar_t__ TRUE ;
 int free (int*) ;
 TYPE_1__ img_report ;
 int safe_strcpy (char*,scalar_t__,int ) ;
 scalar_t__ strlen (char*) ;
 int toupper (int) ;
 int uprintf (char*,int*) ;
 int* utf8_to_wchar (char*) ;
 int wchar_to_utf8_no_alloc (int*,int ,int) ;
 int wcslen (int*) ;

__attribute__((used)) static void ToValidLabel(char* Label, BOOL bFAT)
{
 size_t i, j, k;
 BOOL found;
 WCHAR unauthorized[] = L"*?,;:/\\|+=<>[]\"";
 WCHAR to_underscore[] = L"\t.";
 WCHAR *wLabel = utf8_to_wchar(Label);

 if (wLabel == ((void*)0))
  return;

 for (i = 0, k = 0; i < wcslen(wLabel); i++) {
  if (bFAT) {
   found = FALSE;
   for (j = 0; j < wcslen(unauthorized); j++) {
    if (wLabel[i] == unauthorized[j]) {
     found = TRUE;
     break;
    }
   }

   if (wLabel[i] >= 0x80) {
    wLabel[k++] = L'_';
    found = TRUE;
   }
   if (found)
    continue;
  }
  found = FALSE;
  for (j = 0; j < wcslen(to_underscore); j++) {
   if (wLabel[i] == to_underscore[j]) {
    wLabel[k++] = '_';
    found = TRUE;
    break;
   }
  }
  if (found)
   continue;
  wLabel[k++] = bFAT ? toupper(wLabel[i]) : wLabel[i];
 }
 wLabel[k] = 0;

 if (bFAT) {
  if (wcslen(wLabel) > 11)
   wLabel[11] = 0;
  for (i = 0, j = 0; wLabel[i] != 0 ; i++)
   if (wLabel[i] == '_')
    j++;
  if (i < 2*j) {

   uprintf("FAT label is mostly underscores. Using '%s' label instead.", SelectedDrive.proposed_label);
   for(i = 0; SelectedDrive.proposed_label[i] != 0; i++)
    wLabel[i] = SelectedDrive.proposed_label[i];
   wLabel[i] = 0;
  }
 } else if (wcslen(wLabel) > 32) {
  wLabel[32] = 0;
 }


 wchar_to_utf8_no_alloc(wLabel, img_report.usb_label, sizeof(img_report.usb_label));
 safe_strcpy(Label, strlen(Label) + 1, img_report.usb_label);
 free(wLabel);
}
