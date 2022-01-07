
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; scalar_t__* message; int print_user; int (* print ) (int ,char*) ;} ;
struct TYPE_5__ {TYPE_1__ warn; } ;
typedef TYPE_2__ fz_context ;


 int fz_snprintf (char*,int,char*,int) ;
 int stub1 (int ,char*) ;

void fz_flush_warnings(fz_context *ctx)
{
 if (ctx->warn.count > 1)
 {
  char buf[50];
  fz_snprintf(buf, sizeof buf, "... repeated %d times...", ctx->warn.count);
  if (ctx->warn.print)
   ctx->warn.print(ctx->warn.print_user, buf);
 }
 ctx->warn.message[0] = 0;
 ctx->warn.count = 0;
}
