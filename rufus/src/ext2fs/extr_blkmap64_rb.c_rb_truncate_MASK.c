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
struct rb_root {int dummy; } ;
struct rb_node {int dummy; } ;
struct bmap_rb_extent {int start; int count; } ;
typedef  int __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bmap_rb_extent**) ; 
 int /*<<< orphan*/  FUNC1 (struct rb_node*,struct rb_root*) ; 
 struct rb_node* FUNC2 (struct rb_root*) ; 
 struct bmap_rb_extent* FUNC3 (struct rb_node*) ; 

__attribute__((used)) static void FUNC4(__u64 new_max, struct rb_root *root)
{
	struct bmap_rb_extent *ext;
	struct rb_node *node;

	node = FUNC2(root);
	while (node) {
		ext = FUNC3(node);

		if ((ext->start + ext->count - 1) <= new_max)
			break;
		else if (ext->start > new_max) {
			FUNC1(node, root);
			FUNC0(&ext);
			node = FUNC2(root);
			continue;
		} else
			ext->count = new_max - ext->start + 1;
	}
}