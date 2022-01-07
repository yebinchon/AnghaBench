
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* user; } ;
typedef TYPE_1__ fz_context ;



void fz_set_user_context(fz_context *ctx, void *user)
{
 if (ctx != ((void*)0))
  ctx->user = user;
}
