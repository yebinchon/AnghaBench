#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_media_tree_t ;
struct children_removed_report {size_t count; int /*<<< orphan*/  first_media; TYPE_1__* node; } ;
struct callback_ctx {int /*<<< orphan*/  vec_children_removed; } ;
struct TYPE_4__ {int /*<<< orphan*/  p_item; } ;
typedef  TYPE_1__ input_item_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct children_removed_report) ; 

__attribute__((used)) static void
FUNC4(vlc_media_tree_t *tree, input_item_node_t *node,
                    input_item_node_t *const children[], size_t count,
                    void *userdata)
{
    FUNC0(tree);

    struct callback_ctx *ctx = userdata;

    struct children_removed_report report;
    report.node = node;
    report.first_media = FUNC2(children[0]->p_item);
    report.count = count;
    bool ok = FUNC3(&ctx->vec_children_removed, report);
    FUNC1(ok);
}