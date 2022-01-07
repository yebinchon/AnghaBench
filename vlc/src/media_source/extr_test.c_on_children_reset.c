
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_media_tree_t ;
struct children_reset_report {int * node; } ;
struct callback_ctx {int vec_children_reset; } ;
typedef int input_item_node_t ;


 int VLC_UNUSED (int *) ;
 int assert (int) ;
 int vlc_vector_push (int *,struct children_reset_report) ;

__attribute__((used)) static void
on_children_reset(vlc_media_tree_t *tree, input_item_node_t *node,
                  void *userdata)
{
    VLC_UNUSED(tree);

    struct callback_ctx *ctx = userdata;

    struct children_reset_report report;
    report.node = node;
    bool ok = vlc_vector_push(&ctx->vec_children_reset, report);
    assert(ok);
}
