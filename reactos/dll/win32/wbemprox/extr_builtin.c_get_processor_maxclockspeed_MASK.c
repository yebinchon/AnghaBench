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
typedef  size_t UINT ;
struct TYPE_5__ {size_t MaxMhz; } ;
typedef  TYPE_1__ PROCESSOR_POWER_INFORMATION ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  ProcessorInformation ; 
 int FUNC1 () ; 
 TYPE_1__* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static UINT FUNC4( UINT index )
{
    PROCESSOR_POWER_INFORMATION *info;
    UINT ret = 1000, size = FUNC1() * sizeof(PROCESSOR_POWER_INFORMATION);
    NTSTATUS status;

    if ((info = FUNC2( size )))
    {
        status = FUNC0( ProcessorInformation, NULL, 0, info, size );
        if (!status) ret = info[index].MaxMhz;
        FUNC3( info );
    }
    return ret;
}