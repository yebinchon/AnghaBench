#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* synctex_node_t ;
struct TYPE_12__ {TYPE_1__* class; } ;
struct TYPE_11__ {scalar_t__ type; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 scalar_t__ synctex_node_type_sheet ; 

synctex_node_t FUNC3(synctex_node_t node) {
	if (FUNC0(node)) {
		return FUNC0(node);
	}
sibling:
	if (FUNC2(node)) {
		return FUNC2(node);
	}
	if ((node = FUNC1(node))) {
		if (node->class->type == synctex_node_type_sheet) {/*  EXC_BAD_ACCESS? */
			return NULL;
		}
		goto sibling;
	}
	return NULL;
}