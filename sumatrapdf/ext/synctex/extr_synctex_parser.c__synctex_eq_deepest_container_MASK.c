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
typedef  int /*<<< orphan*/  synctex_point_t ;
typedef  TYPE_2__* synctex_node_t ;
typedef  int /*<<< orphan*/  synctex_bool_t ;
struct TYPE_12__ {TYPE_1__* class; } ;
struct TYPE_11__ {int type; } ;

/* Variables and functions */
 int INT_MAX ; 
 TYPE_2__* FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
#define  synctex_node_type_hbox 129 
#define  synctex_node_type_vbox 128 

__attribute__((used)) static synctex_node_t FUNC4(synctex_point_t hitPoint,synctex_node_t node, synctex_bool_t visible) {
	if (node) {
		synctex_node_t result = NULL;
		synctex_node_t child = NULL;
		switch(node->class->type) {
			case synctex_node_type_vbox:
			case synctex_node_type_hbox:
				/*  test the deep nodes first */
				if ((child = FUNC0(node))) {
					do {
						if ((result = FUNC4(hitPoint,child,visible))) {
							return result;
						}
					} while((child = FUNC1(child)));
				}
				/*  is the hit point inside the box? */
				if (FUNC3(hitPoint,node,visible)) {
					/*  for vboxes we try to use some node inside.
					 *  Walk through the list of siblings until we find the closest one.
					 *  Only consider siblings with children. */
					if ((node->class->type == synctex_node_type_vbox) && (child = FUNC0(node))) {
						int bestDistance = INT_MAX;
						do {
							if (FUNC0(child)) {
								int distance = FUNC2(hitPoint,child,visible);
								if (distance < bestDistance) {
									bestDistance = distance;
									node = child;
								}
							}
						} while((child = FUNC1(child)));
					}
					return node;
				}
		}
	}
	return NULL;
}