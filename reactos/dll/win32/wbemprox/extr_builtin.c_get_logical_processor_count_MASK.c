#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG_PTR ;
typedef  int ULONG ;
typedef  int UINT ;
struct TYPE_5__ {scalar_t__ Relationship; int ProcessorMask; } ;
typedef  TYPE_1__ SYSTEM_LOGICAL_PROCESSOR_INFORMATION ;
typedef  scalar_t__ NTSTATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int,int*) ; 
 scalar_t__ RelationProcessorCore ; 
 scalar_t__ RelationProcessorPackage ; 
 scalar_t__ STATUS_INFO_LENGTH_MISMATCH ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  SystemLogicalProcessorInformation ; 
 int FUNC1 () ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static UINT FUNC4( UINT *num_cores )
{
    SYSTEM_LOGICAL_PROCESSOR_INFORMATION *info;
    UINT i, j, count = 0;
    NTSTATUS status;
    ULONG len;

    if (num_cores) *num_cores = FUNC1();
    status = FUNC0( SystemLogicalProcessorInformation, NULL, 0, &len );
    if (status != STATUS_INFO_LENGTH_MISMATCH) return FUNC1();

    if (!(info = FUNC2( len ))) return FUNC1();
    status = FUNC0( SystemLogicalProcessorInformation, info, len, &len );
    if (status != STATUS_SUCCESS)
    {
        FUNC3( info );
        return FUNC1();
    }
    if (num_cores) *num_cores = 0;
    for (i = 0; i < len / sizeof(*info); i++)
    {
        if (info[i].Relationship == RelationProcessorCore)
        {
            for (j = 0; j < sizeof(ULONG_PTR); j++) if (info[i].ProcessorMask & (1 << j)) count++;
        }
        else if (info[i].Relationship == RelationProcessorPackage && num_cores)
        {
            for (j = 0; j < sizeof(ULONG_PTR); j++) if (info[i].ProcessorMask & (1 << j)) (*num_cores)++;
        }
    }
    FUNC3( info );
    return count;
}