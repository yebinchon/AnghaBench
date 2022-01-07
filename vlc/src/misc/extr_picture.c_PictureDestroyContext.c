
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* context; } ;
typedef TYPE_1__ picture_t ;
struct TYPE_6__ {int (* destroy ) (TYPE_2__*) ;} ;
typedef TYPE_2__ picture_context_t ;


 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void PictureDestroyContext( picture_t *p_picture )
{
    picture_context_t *ctx = p_picture->context;
    if (ctx != ((void*)0))
    {
        ctx->destroy(ctx);
        p_picture->context = ((void*)0);
    }
}
