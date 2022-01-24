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
typedef  int /*<<< orphan*/  browse_info ;
struct TYPE_9__ {struct TYPE_9__* lpifq; struct TYPE_9__* lpi; scalar_t__ pEnumIL; int /*<<< orphan*/  lpsfParent; } ;
struct TYPE_7__ {int /*<<< orphan*/  lParam; } ;
struct TYPE_8__ {TYPE_1__ itemOld; } ;
typedef  TYPE_2__ NMTREEVIEWW ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_3__* LPTV_ITEMDATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_3__*) ; 

__attribute__((used)) static LRESULT FUNC4( browse_info *info, NMTREEVIEWW *pnmtv )
{
    LPTV_ITEMDATA lptvid = (LPTV_ITEMDATA)pnmtv->itemOld.lParam;

    FUNC3("TVN_DELETEITEMA/W %p\n", lptvid);

    FUNC1(lptvid->lpsfParent);
    if (lptvid->pEnumIL)
        FUNC0(lptvid->pEnumIL);
    FUNC2(lptvid->lpi);
    FUNC2(lptvid->lpifq);
    FUNC2(lptvid);
    return 0;
}