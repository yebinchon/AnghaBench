#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* DebugInfo; } ;
struct TYPE_9__ {struct TYPE_9__* drv_id; TYPE_7__ crst; } ;
struct TYPE_8__ {scalar_t__* Spare; } ;
typedef  TYPE_2__ MMDevice ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 size_t MMDevice_count ; 
 TYPE_2__** MMDevice_head ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(MMDevice *This)
{
    DWORD i;
    FUNC3("Freeing %s\n", FUNC4(This->drv_id));
    /* Since this function is called at destruction time, reordering of the list is unimportant */
    for (i = 0; i < MMDevice_count; ++i)
    {
        if (MMDevice_head[i] == This)
        {
            MMDevice_head[i] = MMDevice_head[--MMDevice_count];
            break;
        }
    }
    This->crst.DebugInfo->Spare[0] = 0;
    FUNC0(&This->crst);
    FUNC2(FUNC1(), 0, This->drv_id);
    FUNC2(FUNC1(), 0, This);
}