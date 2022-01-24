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
struct TYPE_3__ {int /*<<< orphan*/  szValue; int /*<<< orphan*/  pftValue; int /*<<< orphan*/  iValue; int /*<<< orphan*/  datatype; int /*<<< orphan*/  property; } ;
typedef  TYPE_1__ msi_summary_info ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  MSIHANDLE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(MSIHANDLE db, const msi_summary_info *info, int num_info)
{
    MSIHANDLE summary;
    UINT r;
    int j;

    r = FUNC1(db, NULL, num_info, &summary);
    FUNC4(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    /* import summary information into the stream */
    for (j = 0; j < num_info; j++)
    {
        const msi_summary_info *entry = &info[j];

        r = FUNC3(summary, entry->property, entry->datatype,
                                       entry->iValue, entry->pftValue, entry->szValue);
        FUNC4(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);
    }

    /* write the summary changes back to the stream */
    r = FUNC2(summary);
    FUNC4(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    FUNC0(summary);
}