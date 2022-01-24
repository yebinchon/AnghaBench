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
typedef  int /*<<< orphan*/  szMenuString ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ UINT_PTR ;
typedef  size_t UINT ;
struct TYPE_3__ {scalar_t__ uID; scalar_t__ wCmdID; struct TYPE_3__* SubMenu; } ;
typedef  int /*<<< orphan*/ * HMENU ;
typedef  TYPE_1__ GUICONSOLE_MENUITEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ConSrvDllInstance ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int) ; 
 int MF_POPUP ; 
 int MF_SEPARATOR ; 
 int MF_STRING ; 

__attribute__((used)) static VOID
FUNC4(HMENU hMenu,
                          const GUICONSOLE_MENUITEM *Items)
{
    UINT i = 0;
    WCHAR szMenuString[255];
    HMENU hSubMenu;

    do
    {
        if (Items[i].uID != (UINT)-1)
        {
            if (FUNC3(ConSrvDllInstance,
                            Items[i].uID,
                            szMenuString,
                            sizeof(szMenuString) / sizeof(szMenuString[0])) > 0)
            {
                if (Items[i].SubMenu != NULL)
                {
                    hSubMenu = FUNC1();
                    if (hSubMenu != NULL)
                    {
                        FUNC4(hSubMenu,
                                                  Items[i].SubMenu);

                        if (!FUNC0(hMenu,
                                         MF_STRING | MF_POPUP,
                                         (UINT_PTR)hSubMenu,
                                         szMenuString))
                        {
                            FUNC2(hSubMenu);
                        }
                    }
                }
                else
                {
                    FUNC0(hMenu,
                                MF_STRING,
                                Items[i].wCmdID,
                                szMenuString);
                }
            }
        }
        else
        {
            FUNC0(hMenu,
                        MF_SEPARATOR,
                        0,
                        NULL);
        }
        i++;
    } while (!(Items[i].uID == 0 && Items[i].SubMenu == NULL && Items[i].wCmdID == 0));
}