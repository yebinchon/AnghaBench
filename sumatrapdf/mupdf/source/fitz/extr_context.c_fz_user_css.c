
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* style; } ;
typedef TYPE_2__ fz_context ;
struct TYPE_4__ {char const* user_css; } ;



const char *fz_user_css(fz_context *ctx)
{
 return ctx->style->user_css;
}
