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
struct TYPE_3__ {scalar_t__ in_transit; } ;
typedef  TYPE_1__ pdfapp_t ;

/* Variables and functions */
 int dirty ; 
 int transition_dirty ; 

void FUNC0(pdfapp_t *app)
{
	dirty = 1;
	if (app->in_transit)
		transition_dirty = 1;
}