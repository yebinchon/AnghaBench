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
struct graph {int dummy; } ;
typedef  enum graph_display { ____Placeholder_graph_display } graph_display ;

/* Variables and functions */
 int GRAPH_DISPLAY_V1 ; 
 int GRAPH_DISPLAY_V2 ; 
 struct graph* FUNC0 () ; 
 struct graph* FUNC1 () ; 

struct graph *
FUNC2(enum graph_display display)
{
	if (display == GRAPH_DISPLAY_V1)
		return FUNC0();
	if (display == GRAPH_DISPLAY_V2)
		return FUNC1();
	return NULL;
}