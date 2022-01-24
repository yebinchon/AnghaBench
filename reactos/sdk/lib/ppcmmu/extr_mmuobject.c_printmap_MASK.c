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
typedef  int /*<<< orphan*/  vaddr_t ;
struct TYPE_4__ {int /*<<< orphan*/  proc; } ;
typedef  TYPE_1__ ppc_map_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int PpcPageTable ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(vaddr_t vaddr, ppc_map_t *map)
{
    FUNC1("%x: proc %x addr %x\n", 
           FUNC0(map - PpcPageTable), 
           map->proc, vaddr);
}