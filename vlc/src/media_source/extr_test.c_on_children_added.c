
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_media_tree_t ;
struct children_added_report {size_t count; int first_media; TYPE_1__* node; } ;
struct callback_ctx {int vec_children_added; } ;
struct TYPE_4__ {int p_item; } ;
typedef TYPE_1__ input_item_node_t ;


 int VLC_UNUSED (int *) ;
 int assert (int) ;
 int input_item_Hold (int ) ;
 int vlc_vector_push (int *,struct children_added_report) ;

__attribute__((used)) static void
on_children_added(vlc_media_tree_t *tree, input_item_node_t *node,
                  input_item_node_t *const children[], size_t count,
                  void *userdata)
{
    VLC_UNUSED(tree);

    struct callback_ctx *ctx = userdata;

    struct children_added_report report;
    report.node = node;
    report.first_media = input_item_Hold(children[0]->p_item);
    report.count = count;
    bool ok = vlc_vector_push(&ctx->vec_children_added, report);
    assert(ok);
}
