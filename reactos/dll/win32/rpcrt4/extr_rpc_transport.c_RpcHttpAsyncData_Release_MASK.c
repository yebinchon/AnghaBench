#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_11__ {TYPE_2__* DebugInfo; } ;
struct TYPE_8__ {TYPE_3__* lpvBuffer; } ;
struct TYPE_10__ {TYPE_7__ cs; TYPE_1__ inet_buffers; int /*<<< orphan*/  completion_event; int /*<<< orphan*/  refs; } ;
struct TYPE_9__ {scalar_t__* Spare; } ;
typedef  TYPE_3__ RpcHttpAsyncData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_3__*) ; 

__attribute__((used)) static ULONG FUNC6(RpcHttpAsyncData *data)
{
    ULONG refs = FUNC4(&data->refs);
    if (!refs)
    {
        FUNC5("destroying async data %p\n", data);
        FUNC0(data->completion_event);
        FUNC3(FUNC2(), 0, data->inet_buffers.lpvBuffer);
        data->cs.DebugInfo->Spare[0] = 0;
        FUNC1(&data->cs);
        FUNC3(FUNC2(), 0, data);
    }
    return refs;
}