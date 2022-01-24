#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_8__ {char* name; int level; struct TYPE_8__* right; struct TYPE_8__* left; int /*<<< orphan*/  value; int /*<<< orphan*/  atts; } ;
typedef  TYPE_1__ js_Property ;
typedef  int /*<<< orphan*/  js_Object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__ sentinel ; 
 void* FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (TYPE_1__*) ; 
 int FUNC3 (char const*,char*) ; 

__attribute__((used)) static js_Property *FUNC4(js_State *J, js_Object *obj, js_Property *node, const char *name)
{
	js_Property *temp, *succ;

	if (node != &sentinel) {
		int c = FUNC3(name, node->name);
		if (c < 0) {
			node->left = FUNC4(J, obj, node->left, name);
		} else if (c > 0) {
			node->right = FUNC4(J, obj, node->right, name);
		} else {
			if (node->left == &sentinel) {
				temp = node;
				node = node->right;
				FUNC0(J, obj, temp);
			} else if (node->right == &sentinel) {
				temp = node;
				node = node->left;
				FUNC0(J, obj, temp);
			} else {
				succ = node->right;
				while (succ->left != &sentinel)
					succ = succ->left;
				node->name = succ->name;
				node->atts = succ->atts;
				node->value = succ->value;
				node->right = FUNC4(J, obj, node->right, succ->name);
			}
		}

		if (node->left->level < node->level - 1 ||
			node->right->level < node->level - 1)
		{
			if (node->right->level > --node->level)
				node->right->level = node->level;
			node = FUNC1(node);
			node->right = FUNC1(node->right);
			node->right->right = FUNC1(node->right->right);
			node = FUNC2(node);
			node->right = FUNC2(node->right);
		}
	}
	return node;
}