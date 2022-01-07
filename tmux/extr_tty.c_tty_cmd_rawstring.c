
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_ctx {int num; int ptr; } ;
struct tty {int dummy; } ;


 int tty_add (struct tty*,int ,int ) ;
 int tty_invalidate (struct tty*) ;

void
tty_cmd_rawstring(struct tty *tty, const struct tty_ctx *ctx)
{
 tty_add(tty, ctx->ptr, ctx->num);
 tty_invalidate(tty);
}
