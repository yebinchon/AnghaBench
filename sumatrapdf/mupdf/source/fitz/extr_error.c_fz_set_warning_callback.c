
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void (* print ) (void*,char const*) ;void* print_user; } ;
struct TYPE_5__ {TYPE_1__ warn; } ;
typedef TYPE_2__ fz_context ;



void fz_set_warning_callback(fz_context *ctx, void (*print)(void *user, const char *message), void *user)
{
 ctx->warn.print_user = user;
 ctx->warn.print = print;
}
