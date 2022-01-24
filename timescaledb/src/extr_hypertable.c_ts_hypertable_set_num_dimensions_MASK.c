#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int16 ;
struct TYPE_5__ {scalar_t__ num_dimensions; } ;
struct TYPE_6__ {TYPE_1__ fd; } ;
typedef  TYPE_2__ Hypertable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*) ; 

int
FUNC2(Hypertable *ht, int16 num_dimensions)
{
	FUNC0(num_dimensions > 0);
	ht->fd.num_dimensions = num_dimensions;
	return FUNC1(ht);
}