
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct tty_ctx {scalar_t__ xoff; scalar_t__ yoff; scalar_t__ ox; scalar_t__ sx; scalar_t__ oy; scalar_t__ sy; int bigger; } ;
struct tty {int client; } ;


 scalar_t__ status_at_line (int ) ;
 scalar_t__ status_line_size (int ) ;

__attribute__((used)) static int
tty_is_visible(struct tty *tty, const struct tty_ctx *ctx, u_int px, u_int py,
    u_int nx, u_int ny)
{
 u_int xoff = ctx->xoff + px, yoff = ctx->yoff + py, lines;

 if (!ctx->bigger)
  return (1);

 if (status_at_line(tty->client) == 0)
  lines = status_line_size(tty->client);
 else
  lines = 0;

 if (xoff + nx <= ctx->ox || xoff >= ctx->ox + ctx->sx ||
     yoff + ny <= ctx->oy || yoff >= lines + ctx->oy + ctx->sy)
  return (0);
 return (1);
}
