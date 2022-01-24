#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {size_t avl_offset; } ;
typedef  TYPE_1__ avl_tree_t ;
struct TYPE_10__ {struct TYPE_10__** avl_child; } ;
typedef  TYPE_2__ avl_node_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (void*,size_t) ; 
 void* FUNC1 (TYPE_2__*,size_t) ; 
 int FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (TYPE_2__*) ; 

void *
FUNC4(avl_tree_t *tree, void	*oldnode, int left)
{
	size_t off = tree->avl_offset;
	avl_node_t *node = FUNC0(oldnode, off);
	int right = 1 - left;
	int was_child;


	/*
	 * nowhere to walk to if tree is empty
	 */
	if (node == NULL)
		return (NULL);

	/*
	 * Visit the previous valued node. There are two possibilities:
	 *
	 * If this node has a left child, go down one left, then all
	 * the way right.
	 */
	if (node->avl_child[left] != NULL) {
		for (node = node->avl_child[left];
		    node->avl_child[right] != NULL;
		    node = node->avl_child[right])
			;
	/*
	 * Otherwise, return through left children as far as we can.
	 */
	} else {
		for (;;) {
			was_child = FUNC2(node);
			node = FUNC3(node);
			if (node == NULL)
				return (NULL);
			if (was_child == right)
				break;
		}
	}

	return (FUNC1(node, off));
}