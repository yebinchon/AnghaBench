#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  tablespace_name; } ;
struct TYPE_5__ {TYPE_1__ fd; } ;
typedef  TYPE_2__ Tablespace ;
typedef  int /*<<< orphan*/  Hypertable ;
typedef  int /*<<< orphan*/  Chunk ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

char *
FUNC2(Hypertable *ht, Chunk *chunk)
{
	Tablespace *tspc = FUNC1(ht, chunk);

	if (NULL == tspc)
		return NULL;

	return FUNC0(tspc->fd.tablespace_name);
}