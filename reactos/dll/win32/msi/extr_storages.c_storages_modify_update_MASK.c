#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tagMSIVIEW {int dummy; } ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  MSISTORAGESVIEW ;
typedef  int /*<<< orphan*/  MSIRECORD ;

/* Variables and functions */
 scalar_t__ ERROR_FUNCTION_FAILED ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (struct tagMSIVIEW*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static UINT FUNC2(struct tagMSIVIEW *view, MSIRECORD *rec)
{
    MSISTORAGESVIEW *sv = (MSISTORAGESVIEW *)view;
    UINT r, row;

    r = FUNC1(sv, rec, &row);
    if (r != ERROR_SUCCESS)
        return ERROR_FUNCTION_FAILED;

    return FUNC0(view, row, rec, 0);
}