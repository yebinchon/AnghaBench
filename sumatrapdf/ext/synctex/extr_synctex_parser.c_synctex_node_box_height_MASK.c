#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* synctex_node_t ;
struct TYPE_9__ {TYPE_1__* class; } ;
struct TYPE_8__ {scalar_t__ type; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 scalar_t__ synctex_node_type_sheet ; 

int FUNC3(synctex_node_t node){
	if (!node) {
		return 0;
	}
	if (FUNC1(node)) {
result:
		return FUNC0(node);
	}
	if ((node = FUNC2(node)) && (node->class->type != synctex_node_type_sheet)) {
		goto result;
	}
	return 0;
}