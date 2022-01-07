
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {int mask; scalar_t__ iImage; int pszText; scalar_t__ iSubItem; scalar_t__ iItem; } ;
struct TYPE_5__ {int cbSize; int ImageList; } ;
typedef int TCHAR ;
typedef TYPE_1__ SP_CLASSIMAGELIST_DATA ;
typedef int (* SH_GIL_PROC ) (int *,int *) ;
typedef TYPE_2__ LV_ITEM ;
typedef int LPCSTR ;
typedef scalar_t__ INT ;
typedef int HWND ;
typedef int * HMODULE ;
typedef int HIMAGELIST ;
typedef int (* FII_PROC ) (int ) ;
typedef int BOOL ;


 int FALSE ;
 int FreeLibrary (int *) ;
 int GetDlgItem (int ,int ) ;
 scalar_t__ GetProcAddress (int *,int ) ;
 scalar_t__ IDC_DEVICE ;
 int IDC_LSTVIEW ;
 scalar_t__ IDC_SYSTEM ;
 scalar_t__ ImageList_GetImageCount (int ) ;
 int LVIF_IMAGE ;
 int LVIF_TEXT ;
 int LVSIL_SMALL ;
 int ListView_DeleteAllItems (int ) ;
 int ListView_InsertItem (int ,TYPE_2__*) ;
 int ListView_SetImageList (int ,int ,int ) ;
 int * LoadLibrary (int ) ;
 int SetupDiGetClassImageList (TYPE_1__*) ;
 int TRUE ;
 int _T (char*) ;
 int _itot (scalar_t__,int *,int) ;

BOOL
DisplayImageList(HWND hwnd,
                 UINT uID)
{
    HWND hLV;
    SP_CLASSIMAGELIST_DATA ImageListData;
    LV_ITEM lvItem;
    TCHAR Buf[6];
    INT ImageListCount = -1;
    INT i = 0;

    hLV = GetDlgItem(hwnd, IDC_LSTVIEW);
    (void)ListView_DeleteAllItems(hLV);

    if (uID == IDC_SYSTEM)
    {
        HIMAGELIST hLarge, hSmall;
        HMODULE hShell32;
        SH_GIL_PROC Shell_GetImageLists;
        FII_PROC FileIconInit;

        hShell32 = LoadLibrary(_T("shell32.dll"));
        if(hShell32 == ((void*)0))
            return FALSE;

        Shell_GetImageLists = (SH_GIL_PROC)GetProcAddress(hShell32, (LPCSTR)71);
        FileIconInit = (FII_PROC)GetProcAddress(hShell32, (LPCSTR)660);

        if(Shell_GetImageLists == ((void*)0) || FileIconInit == ((void*)0))
        {
            FreeLibrary(hShell32);
            return FALSE;
        }

        FileIconInit(TRUE);

        Shell_GetImageLists(&hLarge, &hSmall);

        ImageListCount = ImageList_GetImageCount(hSmall);

        (void)ListView_SetImageList(hLV,
                                    hSmall,
                                    LVSIL_SMALL);

        FreeLibrary(hShell32);
    }
    else if (uID == IDC_DEVICE)
    {
        ImageListData.cbSize = sizeof(SP_CLASSIMAGELIST_DATA);
        SetupDiGetClassImageList(&ImageListData);

        ImageListCount = ImageList_GetImageCount(ImageListData.ImageList);

        (void)ListView_SetImageList(hLV,
                                    ImageListData.ImageList,
                                    LVSIL_SMALL);
    }
    else
        return FALSE;

    lvItem.mask = LVIF_TEXT | LVIF_IMAGE;

    while (i <= ImageListCount)
    {
        lvItem.iItem = i;
        lvItem.iSubItem = 0;
        lvItem.pszText = _itot(i, Buf, 10);
        lvItem.iImage = i;

        (void)ListView_InsertItem(hLV, &lvItem);

        i++;
    }

    return TRUE;
}
