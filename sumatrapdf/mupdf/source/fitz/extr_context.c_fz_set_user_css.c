
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* style; } ;
typedef TYPE_2__ fz_context ;
struct TYPE_6__ {int * user_css; } ;


 int fz_free (TYPE_2__*,int *) ;
 int * fz_strdup (TYPE_2__*,char const*) ;

void fz_set_user_css(fz_context *ctx, const char *user_css)
{
 fz_free(ctx, ctx->style->user_css);
 ctx->style->user_css = user_css ? fz_strdup(ctx, user_css) : ((void*)0);
}
