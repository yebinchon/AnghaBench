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
typedef  int /*<<< orphan*/  ppc_map_t ;
typedef  int /*<<< orphan*/  paddr_t ;
struct TYPE_3__ {scalar_t__* tree; } ;
typedef  TYPE_1__ MmuVsidInfo ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * PpcPageTable ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(int vsid)
{
    int i;
    MmuVsidInfo *info = FUNC1(vsid);
    if(!info) return;
    ppc_map_t *map = &PpcPageTable[FUNC0((paddr_t)info)];
    for(i = 0; i < 256; i++)
    {
	if(info->tree[i]) 
	    FUNC3(info->tree[i]);
    }
    FUNC2(map);
}