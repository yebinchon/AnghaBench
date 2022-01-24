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
typedef  int UINT ;
struct TYPE_3__ {int num_rows; } ;
typedef  TYPE_1__ MSISTORAGESVIEW ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int ERROR_FUNCTION_FAILED ; 
 int FUNC0 (struct tagMSIVIEW*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static UINT FUNC2(struct tagMSIVIEW *view, MSIRECORD *rec, UINT row, BOOL temporary)
{
    MSISTORAGESVIEW *sv = (MSISTORAGESVIEW *)view;

    if (!FUNC1(sv, ++sv->num_rows))
        return ERROR_FUNCTION_FAILED;

    if (row == -1)
        row = sv->num_rows - 1;

    /* FIXME have to readjust rows */

    return FUNC0(view, row, rec, 0);
}