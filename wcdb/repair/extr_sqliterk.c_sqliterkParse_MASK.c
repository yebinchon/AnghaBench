#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  pager; } ;
typedef  TYPE_1__ sqliterk ;

/* Variables and functions */
 int SQLITERK_MISUSE ; 
 int SQLITERK_OK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

int FUNC2(sqliterk *rk)
{
    if (!rk) {
        return SQLITERK_MISUSE;
    }

    int i;
    for (i = 0; i < FUNC0(rk->pager); i++) {
        int pageno = i + 1;
        FUNC1(rk, pageno);
    }
    return SQLITERK_OK;
}