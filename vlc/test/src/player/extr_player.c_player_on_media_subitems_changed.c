
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_player_t ;
struct report_media_subitems {int count; int * items; } ;
struct ctx {int dummy; } ;
typedef int input_item_t ;
struct TYPE_5__ {int i_children; TYPE_1__** pp_children; } ;
typedef TYPE_2__ input_item_node_t ;
struct TYPE_4__ {int p_item; } ;


 int VEC_PUSH (int ,struct report_media_subitems) ;
 int assert (int *) ;
 struct ctx* get_ctx (int *,void*) ;
 int input_item_Hold (int ) ;
 int on_media_subitems_changed ;
 int * vlc_alloc (int,int) ;

__attribute__((used)) static void
player_on_media_subitems_changed(vlc_player_t *player, input_item_t *media,
                           input_item_node_t *subitems, void *data)
{
    (void) media;
    struct ctx *ctx = get_ctx(player, data);

    struct report_media_subitems report = {
        .count = subitems->i_children,
        .items = vlc_alloc(subitems->i_children, sizeof(input_item_t)),
    };
    assert(report.items);
    for (int i = 0; i < subitems->i_children; ++i)
        report.items[i] = input_item_Hold(subitems->pp_children[i]->p_item);
    VEC_PUSH(on_media_subitems_changed, report);
}
