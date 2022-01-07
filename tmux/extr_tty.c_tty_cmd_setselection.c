
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_ctx {int num; int ptr; } ;
struct tty {int term; } ;


 int TTYC_MS ;
 int b64_ntop (int ,int,char*,size_t) ;
 int free (char*) ;
 int tty_putcode_ptr2 (struct tty*,int ,char*,char*) ;
 int tty_term_has (int ,int ) ;
 char* xmalloc (size_t) ;

void
tty_cmd_setselection(struct tty *tty, const struct tty_ctx *ctx)
{
 char *buf;
 size_t off;

 if (!tty_term_has(tty->term, TTYC_MS))
  return;

 off = 4 * ((ctx->num + 2) / 3) + 1;
 buf = xmalloc(off);

 b64_ntop(ctx->ptr, ctx->num, buf, off);
 tty_putcode_ptr2(tty, TTYC_MS, "", buf);

 free(buf);
}
