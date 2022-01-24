#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {scalar_t__ uID; scalar_t__ uCmdID; struct TYPE_3__* SubMenu; } ;
typedef  TYPE_1__ VDM_MENUITEM ;
typedef  scalar_t__ UINT_PTR ;
typedef  size_t UINT ;
typedef  int /*<<< orphan*/ * HMENU ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MF_POPUP ; 
 int MF_SEPARATOR ; 
 int MF_STRING ; 

__attribute__((used)) static VOID
FUNC6(HMENU hMenu,
                const VDM_MENUITEM *Items)
{
    UINT i = 0;
    WCHAR szMenuString[256];
    HMENU hSubMenu;

    do
    {
        if (Items[i].uID != (UINT)-1)
        {
            if (FUNC5(FUNC4(NULL),
                            Items[i].uID,
                            szMenuString,
                            FUNC0(szMenuString)) > 0)
            {
                if (Items[i].SubMenu != NULL)
                {
                    hSubMenu = FUNC2();
                    if (hSubMenu != NULL)
                    {
                        FUNC6(hSubMenu, Items[i].SubMenu);

                        if (!FUNC1(hMenu,
                                         MF_STRING | MF_POPUP,
                                         (UINT_PTR)hSubMenu,
                                         szMenuString))
                        {
                            FUNC3(hSubMenu);
                        }
                    }
                }
                else
                {
                    FUNC1(hMenu,
                                MF_STRING,
                                Items[i].uCmdID,
                                szMenuString);
                }
            }
        }
        else
        {
            FUNC1(hMenu,
                        MF_SEPARATOR,
                        0,
                        NULL);
        }
        i++;
    } while (!(Items[i].uID == 0 && Items[i].SubMenu == NULL && Items[i].uCmdID == 0));
}