
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unknown ;
struct promptdisk_params {int DiskPromptStyle; scalar_t__ DiskName; scalar_t__ FileSought; int * PathToSource; scalar_t__ DialogTitle; } ;
typedef int message ;
typedef int format ;
typedef int __ms_va_list ;
typedef int WCHAR ;
typedef int LONG_PTR ;
typedef int HWND ;
typedef scalar_t__ DWORD_PTR ;


 int DWLP_USER ;
 int FORMAT_MESSAGE_ARGUMENT_ARRAY ;
 int FORMAT_MESSAGE_FROM_STRING ;
 int FormatMessageW (int,int *,int ,int ,int *,int,int *) ;
 int GetDlgItem (int ,int ) ;
 int IDC_COPYFROM ;
 int IDC_FILENEEDED ;
 int IDC_INFO ;
 int IDC_PATH ;
 int IDC_RUNDLG_BROWSE ;
 int IDF_NOBROWSE ;
 int IDF_OEMDISK ;
 int IDS_COPYFROM ;
 int IDS_INFO ;
 int IDS_PROMPTDISK ;
 int IDS_UNKNOWN ;
 int LoadStringW (int ,int ,int *,int) ;
 int MAX_PATH ;
 int SW_HIDE ;
 int SetDlgItemTextW (int ,int ,int *) ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 int SetWindowTextW (int ,scalar_t__) ;
 int ShowWindow (int ,int ) ;
 int hInstance ;

__attribute__((used)) static void promptdisk_init(HWND hwnd, struct promptdisk_params *params)
{
    SetWindowLongPtrW(hwnd, DWLP_USER, (LONG_PTR)params);

    if(params->DialogTitle)
        SetWindowTextW(hwnd, params->DialogTitle);
    if(params->PathToSource)
        SetDlgItemTextW(hwnd, IDC_PATH, params->PathToSource);

    if(!(params->DiskPromptStyle & IDF_OEMDISK))
    {
        WCHAR message[256+2*MAX_PATH];
        WCHAR format[256];
        WCHAR unknown[256];
        DWORD_PTR args[2];
        LoadStringW(hInstance, IDS_PROMPTDISK, format,
            sizeof(format)/sizeof(format[0]));

        args[0] = (DWORD_PTR)params->FileSought;
        if(params->DiskName)
            args[1] = (DWORD_PTR)params->DiskName;
        else
        {
            LoadStringW(hInstance, IDS_UNKNOWN, unknown,
                sizeof(unknown)/sizeof(unknown[0]));
            args[1] = (DWORD_PTR)unknown;
        }
        FormatMessageW(FORMAT_MESSAGE_FROM_STRING|FORMAT_MESSAGE_ARGUMENT_ARRAY,
                       format, 0, 0, message, sizeof(message)/sizeof(*message),
                       (__ms_va_list*)args);
        SetDlgItemTextW(hwnd, IDC_FILENEEDED, message);

        LoadStringW(hInstance, IDS_INFO, message,
            sizeof(message)/sizeof(message[0]));
        SetDlgItemTextW(hwnd, IDC_INFO, message);
        LoadStringW(hInstance, IDS_COPYFROM, message,
            sizeof(message)/sizeof(message[0]));
        SetDlgItemTextW(hwnd, IDC_COPYFROM, message);
    }
    if(params->DiskPromptStyle & IDF_NOBROWSE)
        ShowWindow(GetDlgItem(hwnd, IDC_RUNDLG_BROWSE), SW_HIDE);
}
