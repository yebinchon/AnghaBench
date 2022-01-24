#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  IOleCommandTarget_iface; } ;
struct TYPE_9__ {TYPE_1__ basedoc; int /*<<< orphan*/  hwnd; scalar_t__ hostui; } ;
struct TYPE_8__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ POINT ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  TYPE_3__ HTMLDocumentObj ;
typedef  int /*<<< orphan*/  HMENU ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CGID_MSHTML ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  IDR_BROWSE_CONTEXT_MENU ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int TPM_LEFTALIGN ; 
 int TPM_RETURNCMD ; 
 int TPM_RIGHTBUTTON ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(HTMLDocumentObj *This, DWORD dwID, POINT *ppt, IDispatch *elem)
{
    HMENU menu_res, menu;
    DWORD cmdid;

    if(This->hostui && S_OK == FUNC2(This->hostui,
            dwID, ppt, (IUnknown*)&This->basedoc.IOleCommandTarget_iface, elem))
        return;

    menu_res = FUNC4(FUNC7(), FUNC5(IDR_BROWSE_CONTEXT_MENU));
    menu = FUNC1(menu_res, dwID);

    cmdid = FUNC6(menu, TPM_LEFTALIGN | TPM_RIGHTBUTTON | TPM_RETURNCMD,
            ppt->x, ppt->y, 0, This->hwnd, NULL);
    FUNC0(menu_res);

    if(cmdid)
        FUNC3(&This->basedoc.IOleCommandTarget_iface, &CGID_MSHTML, cmdid, 0,
                NULL, NULL);
}