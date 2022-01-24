#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint_t ;
struct TYPE_7__ {size_t sh_hashlen; TYPE_2__** sh_hash; } ;
typedef  TYPE_1__ fmd_serd_hash_t ;
struct TYPE_8__ {struct TYPE_8__* sg_next; } ;
typedef  TYPE_2__ fmd_serd_eng_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 

void
FUNC3(fmd_serd_hash_t *shp)
{
	fmd_serd_eng_t *sgp, *ngp;
	uint_t i;

	for (i = 0; i < shp->sh_hashlen; i++) {
		for (sgp = shp->sh_hash[i]; sgp != NULL; sgp = ngp) {
			ngp = sgp->sg_next;
			FUNC1(sgp);
		}
	}

	FUNC2(shp->sh_hash);
	FUNC0(shp, sizeof (fmd_serd_hash_t));
}