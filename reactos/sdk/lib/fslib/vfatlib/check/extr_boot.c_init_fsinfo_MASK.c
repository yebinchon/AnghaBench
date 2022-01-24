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
struct info_sector {void* boot_sign; void* next_cluster; void* free_clusters; void* signature; void* magic; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct info_sector*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct info_sector *i)
{
    FUNC1(i, 0, sizeof (struct info_sector));
    i->magic = FUNC0(0x41615252);
    i->signature = FUNC0(0x61417272);
    i->free_clusters = FUNC0(-1);
    i->next_cluster = FUNC0(2);
    i->boot_sign = FUNC0(0xaa550000);
}