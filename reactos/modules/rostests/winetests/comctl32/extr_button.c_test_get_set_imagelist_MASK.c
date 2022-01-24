#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int uAlign; int /*<<< orphan*/ * himl; int /*<<< orphan*/  margin; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/ * HIMAGELIST ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/ * HBITMAP ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_1__ BUTTON_IMAGELIST ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BCM_GETIMAGELIST ; 
 int /*<<< orphan*/  BCM_SETIMAGELIST ; 
 scalar_t__ BS_DEFCOMMANDLINK ; 
 scalar_t__ BS_PUSHBUTTON ; 
 void* BUTTON_IMAGELIST_ALIGN_CENTER ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ILC_COLOR ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(void)
{
    HWND hwnd;
    HIMAGELIST himl;
    BUTTON_IMAGELIST biml = {0};
    HDC hdc;
    HBITMAP hbmp;
    INT width = 16;
    INT height = 16;
    INT index;
    DWORD type;
    BOOL ret;

    hdc = FUNC3(0);
    hbmp = FUNC0(hdc, width, height);
    FUNC9(hbmp != NULL, "Expect hbmp not null\n");

    himl = FUNC11(width, height, ILC_COLOR, 1, 0);
    FUNC9(himl != NULL, "Expect himl not null\n");
    index = FUNC10(himl, hbmp, NULL);
    FUNC9(index == 0, "Expect index == 0\n");
    FUNC1(hbmp);
    FUNC5(0, hdc);

    for (type = BS_PUSHBUTTON; type <= BS_DEFCOMMANDLINK; type++)
    {
        hwnd = FUNC8(type, NULL);
        FUNC9(hwnd != NULL, "Expect hwnd not null\n");

        /* Get imagelist when imagelist is unset yet */
        ret = FUNC6(hwnd, BCM_GETIMAGELIST, 0, (LPARAM)&biml);
        FUNC9(ret, "Expect BCM_GETIMAGELIST return true\n");
        FUNC9(biml.himl == 0 && FUNC4(&biml.margin) && biml.uAlign == 0,
           "Expect BUTTON_IMAGELIST is empty\n");

        /* Set imagelist with himl null */
        biml.himl = 0;
        biml.uAlign = BUTTON_IMAGELIST_ALIGN_CENTER;
        ret = FUNC6(hwnd, BCM_SETIMAGELIST, 0, (LPARAM)&biml);
        FUNC9(ret || FUNC7(!ret), /* xp or 2003 */
           "Expect BCM_SETIMAGELIST return true\n");

        /* Set imagelist with uAlign invalid */
        biml.himl = himl;
        biml.uAlign = -1;
        ret = FUNC6(hwnd, BCM_SETIMAGELIST, 0, (LPARAM)&biml);
        FUNC9(ret, "Expect BCM_SETIMAGELIST return true\n");

        /* Successful get and set imagelist */
        biml.himl = himl;
        biml.uAlign = BUTTON_IMAGELIST_ALIGN_CENTER;
        ret = FUNC6(hwnd, BCM_SETIMAGELIST, 0, (LPARAM)&biml);
        FUNC9(ret, "Expect BCM_SETIMAGELIST return true\n");
        ret = FUNC6(hwnd, BCM_GETIMAGELIST, 0, (LPARAM)&biml);
        FUNC9(ret, "Expect BCM_GETIMAGELIST return true\n");
        FUNC9(biml.himl == himl, "Expect himl to be same\n");
        FUNC9(biml.uAlign == BUTTON_IMAGELIST_ALIGN_CENTER, "Expect uAlign to be %x\n",
           BUTTON_IMAGELIST_ALIGN_CENTER);

        /* BCM_SETIMAGELIST null pointer handling */
        ret = FUNC6(hwnd, BCM_SETIMAGELIST, 0, 0);
        FUNC9(!ret, "Expect BCM_SETIMAGELIST return false\n");
        ret = FUNC6(hwnd, BCM_GETIMAGELIST, 0, (LPARAM)&biml);
        FUNC9(ret, "Expect BCM_GETIMAGELIST return true\n");
        FUNC9(biml.himl == himl, "Expect himl to be same\n");

        /* BCM_GETIMAGELIST null pointer handling */
        biml.himl = himl;
        biml.uAlign = BUTTON_IMAGELIST_ALIGN_CENTER;
        ret = FUNC6(hwnd, BCM_SETIMAGELIST, 0, (LPARAM)&biml);
        FUNC9(ret, "Expect BCM_SETIMAGELIST return true\n");
        ret = FUNC6(hwnd, BCM_GETIMAGELIST, 0, 0);
        FUNC9(!ret, "Expect BCM_GETIMAGELIST return false\n");

        FUNC2(hwnd);
    }

    FUNC12(himl);
}