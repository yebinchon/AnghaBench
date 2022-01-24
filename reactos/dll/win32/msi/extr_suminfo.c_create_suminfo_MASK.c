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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_4__ {int /*<<< orphan*/ * storage; int /*<<< orphan*/  update_count; } ;
typedef  TYPE_1__ MSISUMMARYINFO ;
typedef  int /*<<< orphan*/  IStorage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSIHANDLETYPE_SUMMARYINFO ; 
 int /*<<< orphan*/  MSI_CloseSummaryInfo ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static MSISUMMARYINFO *FUNC2( IStorage *stg, UINT update_count )
{
    MSISUMMARYINFO *si;

    if (!(si = FUNC1( MSIHANDLETYPE_SUMMARYINFO, sizeof(MSISUMMARYINFO), MSI_CloseSummaryInfo )))
        return NULL;

    si->update_count = update_count;
    FUNC0( stg );
    si->storage = stg;

    return si;
}