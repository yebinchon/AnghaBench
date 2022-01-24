#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_6__ {int mask; scalar_t__ iImage; int /*<<< orphan*/  pszText; scalar_t__ iSubItem; scalar_t__ iItem; } ;
struct TYPE_5__ {int cbSize; int /*<<< orphan*/  ImageList; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  TYPE_1__ SP_CLASSIMAGELIST_DATA ;
typedef  int /*<<< orphan*/  (* SH_GIL_PROC ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
typedef  TYPE_2__ LV_ITEM ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/ * HMODULE ;
typedef  int /*<<< orphan*/  HIMAGELIST ;
typedef  int /*<<< orphan*/  (* FII_PROC ) (int /*<<< orphan*/ ) ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ IDC_DEVICE ; 
 int /*<<< orphan*/  IDC_LSTVIEW ; 
 scalar_t__ IDC_SYSTEM ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int LVIF_IMAGE ; 
 int LVIF_TEXT ; 
 int /*<<< orphan*/  LVSIL_SMALL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ *,int) ; 

BOOL
FUNC11(HWND hwnd,
                 UINT uID)
{
    HWND hLV;
    SP_CLASSIMAGELIST_DATA ImageListData;
    LV_ITEM lvItem;
    TCHAR Buf[6];
    INT ImageListCount = -1;
    INT i = 0;

    hLV = FUNC1(hwnd, IDC_LSTVIEW);
    (void)FUNC4(hLV);

    if (uID == IDC_SYSTEM)
    {
        HIMAGELIST hLarge, hSmall;
        HMODULE      hShell32;
        SH_GIL_PROC  Shell_GetImageLists;
        FII_PROC     FileIconInit;

        hShell32 = FUNC7(FUNC9("shell32.dll"));
        if(hShell32 == NULL)
            return FALSE;

        Shell_GetImageLists = (SH_GIL_PROC)FUNC2(hShell32, (LPCSTR)71);
        FileIconInit = (FII_PROC)FUNC2(hShell32, (LPCSTR)660);

        if(Shell_GetImageLists == NULL || FileIconInit == NULL)
        {
            FUNC0(hShell32);
            return FALSE;
        }

        FileIconInit(TRUE);

        Shell_GetImageLists(&hLarge, &hSmall);

        ImageListCount = FUNC3(hSmall);

        (void)FUNC6(hLV,
                                    hSmall,
                                    LVSIL_SMALL);

        FUNC0(hShell32);
    }
    else if (uID == IDC_DEVICE)
    {
        ImageListData.cbSize = sizeof(SP_CLASSIMAGELIST_DATA);
        FUNC8(&ImageListData);

        ImageListCount = FUNC3(ImageListData.ImageList);

        (void)FUNC6(hLV,
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
        lvItem.pszText = FUNC10(i, Buf, 10);
        lvItem.iImage = i;

        (void)FUNC5(hLV, &lvItem);

        i++;
    }

    return TRUE;
}