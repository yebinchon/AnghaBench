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
typedef  int /*<<< orphan*/  vlc_media_tree_t ;
struct children_reset_report {int /*<<< orphan*/ * node; } ;
struct callback_ctx {int /*<<< orphan*/  vec_children_reset; } ;
typedef  int /*<<< orphan*/  input_item_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct children_reset_report) ; 

__attribute__((used)) static void
FUNC3(vlc_media_tree_t *tree, input_item_node_t *node,
                  void *userdata)
{
    FUNC0(tree);

    struct callback_ctx *ctx = userdata;

    struct children_reset_report report;
    report.node = node;
    bool ok = FUNC2(&ctx->vec_children_reset, report);
    FUNC1(ok);
}