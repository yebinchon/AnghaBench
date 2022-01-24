#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sway_node {size_t id; } ;
struct sway_output {struct sway_node node; } ;
struct focus_inactive_data {int /*<<< orphan*/ * node; int /*<<< orphan*/ * object; } ;
typedef  int /*<<< orphan*/  json_object ;
struct TYPE_2__ {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 struct sway_output* FUNC5 (struct sway_node*) ; 
 int /*<<< orphan*/ * FUNC6 (struct sway_node*) ; 
 TYPE_1__* root ; 

__attribute__((used)) static void FUNC7(struct sway_node *node,
		void *_data) {
	struct focus_inactive_data *data = _data;
	json_object *focus = data->object;
	if (data->node == &root->node) {
		struct sway_output *output = FUNC5(node);
		if (output == NULL) {
			return;
		}
		size_t id = output->node.id;
		int len = FUNC2(focus);
		for (int i = 0; i < len; ++i) {
			if ((size_t) FUNC3(FUNC1(focus, i)) == id) {
				return;
			}
		}
		node = &output->node;
	} else if (FUNC6(node) != data->node) {
		return;
	}
	FUNC0(focus, FUNC4(node->id));
}