
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_5__ {int count; int message; int print_user; int (* print ) (int ,char*) ;} ;
struct TYPE_6__ {TYPE_1__ warn; } ;
typedef TYPE_2__ fz_context ;
typedef int buf ;


 int fz_flush_warnings (TYPE_2__*) ;
 int fz_strlcpy (int ,char*,int) ;
 int fz_vsnprintf (char*,int,char const*,int ) ;
 int strcmp (char*,int ) ;
 int stub1 (int ,char*) ;

void fz_vwarn(fz_context *ctx, const char *fmt, va_list ap)
{
 char buf[sizeof ctx->warn.message];

 fz_vsnprintf(buf, sizeof buf, fmt, ap);
 buf[sizeof(buf) - 1] = 0;

 if (!strcmp(buf, ctx->warn.message))
 {
  ctx->warn.count++;
 }
 else
 {
  fz_flush_warnings(ctx);
  if (ctx->warn.print)
   ctx->warn.print(ctx->warn.print_user, buf);
  fz_strlcpy(ctx->warn.message, buf, sizeof ctx->warn.message);
  ctx->warn.count = 1;
 }
}
