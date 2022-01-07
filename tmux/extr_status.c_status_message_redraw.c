
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct status_line {TYPE_2__* active; int screen; } ;
struct session {int options; } ;
struct screen_write_ctx {int dummy; } ;
struct screen {int grid; } ;
struct grid_cell {int dummy; } ;
struct TYPE_5__ {size_t sx; scalar_t__ sy; } ;
struct client {int message_string; TYPE_1__ tty; struct session* session; struct status_line status; } ;
struct TYPE_6__ {int grid; } ;


 scalar_t__ grid_compare (int ,int ) ;
 int memcpy (struct screen*,TYPE_2__*,int) ;
 int screen_free (struct screen*) ;
 int screen_init (TYPE_2__*,size_t,int,int ) ;
 int screen_write_cursormove (struct screen_write_ctx*,int ,int,int ) ;
 int screen_write_fast_copy (struct screen_write_ctx*,int *,int ,int ,size_t,int) ;
 int screen_write_nputs (struct screen_write_ctx*,size_t,struct grid_cell*,char*,int ) ;
 int screen_write_putc (struct screen_write_ctx*,struct grid_cell*,char) ;
 int screen_write_start (struct screen_write_ctx*,int *,TYPE_2__*) ;
 int screen_write_stop (struct screen_write_ctx*) ;
 size_t screen_write_strlen (char*,int ) ;
 int status_line_size (struct client*) ;
 int style_apply (struct grid_cell*,int ,char*) ;

int
status_message_redraw(struct client *c)
{
 struct status_line *sl = &c->status;
 struct screen_write_ctx ctx;
 struct session *s = c->session;
 struct screen old_screen;
 size_t len;
 u_int lines, offset;
 struct grid_cell gc;

 if (c->tty.sx == 0 || c->tty.sy == 0)
  return (0);
 memcpy(&old_screen, sl->active, sizeof old_screen);

 lines = status_line_size(c);
 if (lines <= 1)
  lines = 1;
 screen_init(sl->active, c->tty.sx, lines, 0);

 len = screen_write_strlen("%s", c->message_string);
 if (len > c->tty.sx)
  len = c->tty.sx;

 style_apply(&gc, s->options, "message-style");

 screen_write_start(&ctx, ((void*)0), sl->active);
 screen_write_fast_copy(&ctx, &sl->screen, 0, 0, c->tty.sx, lines - 1);
 screen_write_cursormove(&ctx, 0, lines - 1, 0);
 for (offset = 0; offset < c->tty.sx; offset++)
  screen_write_putc(&ctx, &gc, ' ');
 screen_write_cursormove(&ctx, 0, lines - 1, 0);
 screen_write_nputs(&ctx, len, &gc, "%s", c->message_string);
 screen_write_stop(&ctx);

 if (grid_compare(sl->active->grid, old_screen.grid) == 0) {
  screen_free(&old_screen);
  return (0);
 }
 screen_free(&old_screen);
 return (1);
}
