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
typedef  int /*<<< orphan*/  sqliterk_btree ;
struct TYPE_5__ {int /*<<< orphan*/  (* didParsePage ) (TYPE_2__*,int) ;} ;
struct TYPE_6__ {TYPE_1__ notify; int /*<<< orphan*/  pager; } ;
typedef  TYPE_2__ sqliterk ;

/* Variables and functions */
#define  SQLITERK_CANCELLED 130 
#define  SQLITERK_DAMAGED 129 
 int /*<<< orphan*/  SQLITERK_MISUSE ; 
#define  SQLITERK_OK 128 
 int /*<<< orphan*/  FUNC0 (int const,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sqliterk_status_checked ; 
 int /*<<< orphan*/  sqliterk_status_damaged ; 
 int /*<<< orphan*/  sqliterk_status_invalid ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 

__attribute__((used)) static void FUNC4(sqliterk *rk,
                                          sqliterk_btree *btree,
                                          int pageno,
                                          int result)
{
    if (!rk) {
        return;
    }
    switch (result) {
        case SQLITERK_OK:
            FUNC2(rk->pager, pageno, sqliterk_status_checked);
            break;
        case SQLITERK_DAMAGED:
            FUNC2(rk->pager, pageno, sqliterk_status_damaged);
            break;
        case SQLITERK_CANCELLED:
            FUNC0(SQLITERK_CANCELLED, "Cancelled parsing page %d.",
                            pageno);
            break;
        default:
            FUNC1(SQLITERK_MISUSE,
                              "Cannot parse page %d. Invalid type.", pageno);
            FUNC2(rk->pager, pageno, sqliterk_status_invalid);
            break;
    }
    //sqliterkOSDebug(result, "sqliterkNotify_onEndParsePage: %d", pageno);
    if (rk->notify.didParsePage) {
        rk->notify.didParsePage(rk, pageno);
    }
}