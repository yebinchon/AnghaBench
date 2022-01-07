
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct tty_ctx {int num; int * ptr; } ;
struct screen_write_ctx {int dummy; } ;


 int screen_write_initctx (struct screen_write_ctx*,struct tty_ctx*) ;
 int tty_cmd_setselection ;
 int tty_write (int ,struct tty_ctx*) ;

void
screen_write_setselection(struct screen_write_ctx *ctx, u_char *str, u_int len)
{
 struct tty_ctx ttyctx;

 screen_write_initctx(ctx, &ttyctx);
 ttyctx.ptr = str;
 ttyctx.num = len;

 tty_write(tty_cmd_setselection, &ttyctx);
}
