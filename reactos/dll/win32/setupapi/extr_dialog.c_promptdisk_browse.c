
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct promptdisk_params {int FileSought; } ;
typedef int ofn ;
typedef scalar_t__ WCHAR ;
struct TYPE_4__ {int lStructSize; int Flags; int nMaxFile; int lpstrFile; int hwndOwner; } ;
typedef TYPE_1__ OPENFILENAMEW ;
typedef int HWND ;


 scalar_t__ GetOpenFileNameW (TYPE_1__*) ;
 int GetProcessHeap () ;
 int HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int ) ;
 int IDC_PATH ;
 int MAX_PATH ;
 int OFN_FILEMUSTEXIST ;
 int OFN_HIDEREADONLY ;
 int OFN_PATHMUSTEXIST ;
 int SetDlgItemTextW (int ,int ,int ) ;
 int ZeroMemory (TYPE_1__*,int) ;
 int strcpyW (int ,int ) ;
 scalar_t__* strrchrW (int ,char) ;

__attribute__((used)) static void promptdisk_browse(HWND hwnd, struct promptdisk_params *params)
{
    OPENFILENAMEW ofn;
    ZeroMemory(&ofn, sizeof(ofn));

    ofn.lStructSize = sizeof(ofn);
    ofn.Flags = OFN_HIDEREADONLY | OFN_FILEMUSTEXIST | OFN_PATHMUSTEXIST;
    ofn.hwndOwner = hwnd;
    ofn.nMaxFile = MAX_PATH;
    ofn.lpstrFile = HeapAlloc(GetProcessHeap(), 0, MAX_PATH*sizeof(WCHAR));
    strcpyW(ofn.lpstrFile, params->FileSought);

    if(GetOpenFileNameW(&ofn))
    {
        WCHAR* last_slash = strrchrW(ofn.lpstrFile, '\\');
        if (last_slash) *last_slash = 0;
        SetDlgItemTextW(hwnd, IDC_PATH, ofn.lpstrFile);
    }
    HeapFree(GetProcessHeap(), 0, ofn.lpstrFile);
}
