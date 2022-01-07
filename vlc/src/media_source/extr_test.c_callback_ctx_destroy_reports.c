
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {size_t size; TYPE_4__* data; } ;
struct TYPE_6__ {size_t size; TYPE_1__* data; } ;
struct callback_ctx {TYPE_3__ vec_children_removed; TYPE_2__ vec_children_added; } ;
struct TYPE_8__ {int first_media; } ;
struct TYPE_5__ {int first_media; } ;


 int input_item_Release (int ) ;

__attribute__((used)) static inline void
callback_ctx_destroy_reports(struct callback_ctx *ctx)
{
    for (size_t i = 0; i < ctx->vec_children_added.size; ++i)
        input_item_Release(ctx->vec_children_added.data[i].first_media);
    for (size_t i = 0; i < ctx->vec_children_removed.size; ++i)
        input_item_Release(ctx->vec_children_removed.data[i].first_media);
}
