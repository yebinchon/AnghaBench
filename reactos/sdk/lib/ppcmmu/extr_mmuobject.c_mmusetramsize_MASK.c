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
typedef  int /*<<< orphan*/  ppc_map_t ;
typedef  scalar_t__ paddr_t ;

/* Variables and functions */
 scalar_t__ FirstUsablePage ; 
 int NextPage ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * PpcPageTable ; 
 scalar_t__ RamSize ; 

void FUNC1(paddr_t ramsize)
{
    ppc_map_t *last_map = &PpcPageTable[FUNC0(ramsize)];
    if(!RamSize)
    {
	RamSize = ramsize;
	FirstUsablePage = (paddr_t)last_map;
	NextPage = FUNC0(FirstUsablePage) + 1;
    }
}