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
typedef  TYPE_2__* synctex_node_t ;
struct TYPE_8__ {TYPE_1__* class; } ;
struct TYPE_7__ {scalar_t__ type; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (TYPE_2__*) ; 
 scalar_t__ synctex_node_type_sheet ; 

int FUNC2(synctex_node_t node){
	synctex_node_t parent = NULL;
	if (!node) {
		return -1;
	}
	parent = FUNC1(node);
	while(parent) {
		node = parent;
		parent = FUNC1(node);
	}
	if (node->class->type == synctex_node_type_sheet) {
		return FUNC0(node);
	}
	return -1;
}