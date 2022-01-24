#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint_t ;
typedef  scalar_t__ hrtime_t ;
struct TYPE_6__ {size_t sh_hashlen; int /*<<< orphan*/  sh_count; TYPE_2__** sh_hash; } ;
typedef  TYPE_1__ fmd_serd_hash_t ;
struct TYPE_7__ {struct TYPE_7__* sg_next; } ;
typedef  TYPE_2__ fmd_serd_eng_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (char const*,size_t,scalar_t__) ; 
 size_t FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int,unsigned long long) ; 

fmd_serd_eng_t *
FUNC3(fmd_serd_hash_t *shp, const char *name,
    uint_t n, hrtime_t t)
{
	uint_t h = FUNC1(name) % shp->sh_hashlen;
	fmd_serd_eng_t *sgp = FUNC0(name, n, t);

	FUNC2("  SERD Engine: inserting  %s N %d T %llu",
	    name, (int)n, (long long unsigned)t);

	sgp->sg_next = shp->sh_hash[h];
	shp->sh_hash[h] = sgp;
	shp->sh_count++;

	return (sgp);
}