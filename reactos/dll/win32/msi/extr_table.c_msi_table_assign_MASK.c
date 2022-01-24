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
struct tagMSIVIEW {int dummy; } ;
typedef  scalar_t__ UINT ;
struct TYPE_3__ {int num_cols; int /*<<< orphan*/  table; } ;
typedef  TYPE_1__ MSITABLEVIEW ;
typedef  int /*<<< orphan*/  MSIRECORD ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (struct tagMSIVIEW*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct tagMSIVIEW*,scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC3(struct tagMSIVIEW *view, MSIRECORD *rec)
{
    MSITABLEVIEW *tv = (MSITABLEVIEW *)view;
    UINT r, row;

    if (!tv->table)
        return ERROR_INVALID_PARAMETER;

    r = FUNC2(tv, rec, &row, NULL);
    if (r == ERROR_SUCCESS)
        return FUNC1(view, row, rec, (1 << tv->num_cols) - 1);
    else
        return FUNC0( view, rec, -1, FALSE );
}