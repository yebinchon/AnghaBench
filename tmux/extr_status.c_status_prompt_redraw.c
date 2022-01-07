
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct status_line {struct screen* active; int screen; } ;
struct session {int options; } ;
struct screen_write_ctx {int dummy; } ;
struct screen {scalar_t__ cx; int grid; int data; int attr; } ;
struct grid_cell {scalar_t__ cx; int grid; int data; int attr; } ;
struct TYPE_4__ {scalar_t__ sx; scalar_t__ sy; } ;
struct client {scalar_t__ prompt_mode; int prompt_index; TYPE_2__* prompt_buffer; TYPE_1__ tty; int prompt_string; struct session* session; struct status_line status; } ;
struct TYPE_5__ {scalar_t__ size; int width; } ;


 int GRID_ATTR_REVERSE ;
 scalar_t__ PROMPT_COMMAND ;
 scalar_t__ grid_compare (int ,int ) ;
 int memcpy (struct screen*,struct screen*,int) ;
 int screen_free (struct screen*) ;
 int screen_init (struct screen*,scalar_t__,int,int ) ;
 scalar_t__ screen_size_x (struct screen*) ;
 int screen_write_cell (struct screen_write_ctx*,struct screen*) ;
 int screen_write_cursormove (struct screen_write_ctx*,int,int,int ) ;
 int screen_write_fast_copy (struct screen_write_ctx*,int *,int ,int ,int,int) ;
 int screen_write_nputs (struct screen_write_ctx*,int,struct screen*,char*,int ) ;
 int screen_write_putc (struct screen_write_ctx*,struct screen*,char) ;
 int screen_write_start (struct screen_write_ctx*,int *,struct screen*) ;
 int screen_write_stop (struct screen_write_ctx*) ;
 int screen_write_strlen (char*,int ) ;
 int status_line_size (struct client*) ;
 int style_apply (struct screen*,int ,char*) ;
 int utf8_copy (int *,TYPE_2__*) ;
 int utf8_strwidth (TYPE_2__*,int) ;

int
status_prompt_redraw(struct client *c)
{
 struct status_line *sl = &c->status;
 struct screen_write_ctx ctx;
 struct session *s = c->session;
 struct screen old_screen;
 u_int i, lines, offset, left, start, width;
 u_int pcursor, pwidth;
 struct grid_cell gc, cursorgc;

 if (c->tty.sx == 0 || c->tty.sy == 0)
  return (0);
 memcpy(&old_screen, sl->active, sizeof old_screen);

 lines = status_line_size(c);
 if (lines <= 1)
  lines = 1;
 screen_init(sl->active, c->tty.sx, lines, 0);

 if (c->prompt_mode == PROMPT_COMMAND)
  style_apply(&gc, s->options, "message-command-style");
 else
  style_apply(&gc, s->options, "message-style");

 memcpy(&cursorgc, &gc, sizeof cursorgc);
 cursorgc.attr ^= GRID_ATTR_REVERSE;

 start = screen_write_strlen("%s", c->prompt_string);
 if (start > c->tty.sx)
  start = c->tty.sx;

 screen_write_start(&ctx, ((void*)0), sl->active);
 screen_write_fast_copy(&ctx, &sl->screen, 0, 0, c->tty.sx, lines - 1);
 screen_write_cursormove(&ctx, 0, lines - 1, 0);
 for (offset = 0; offset < c->tty.sx; offset++)
  screen_write_putc(&ctx, &gc, ' ');
 screen_write_cursormove(&ctx, 0, lines - 1, 0);
 screen_write_nputs(&ctx, start, &gc, "%s", c->prompt_string);
 screen_write_cursormove(&ctx, start, lines - 1, 0);

 left = c->tty.sx - start;
 if (left == 0)
  goto finished;

 pcursor = utf8_strwidth(c->prompt_buffer, c->prompt_index);
 pwidth = utf8_strwidth(c->prompt_buffer, -1);
 if (pcursor >= left) {




  offset = (pcursor - left) + 1;
  pwidth = left;
 } else
  offset = 0;
 if (pwidth > left)
  pwidth = left;

 width = 0;
 for (i = 0; c->prompt_buffer[i].size != 0; i++) {
  if (width < offset) {
   width += c->prompt_buffer[i].width;
   continue;
  }
  if (width >= offset + pwidth)
   break;
  width += c->prompt_buffer[i].width;
  if (width > offset + pwidth)
   break;

  if (i != c->prompt_index) {
   utf8_copy(&gc.data, &c->prompt_buffer[i]);
   screen_write_cell(&ctx, &gc);
  } else {
   utf8_copy(&cursorgc.data, &c->prompt_buffer[i]);
   screen_write_cell(&ctx, &cursorgc);
  }
 }
 if (sl->active->cx < screen_size_x(sl->active) && c->prompt_index >= i)
  screen_write_putc(&ctx, &cursorgc, ' ');

finished:
 screen_write_stop(&ctx);

 if (grid_compare(sl->active->grid, old_screen.grid) == 0) {
  screen_free(&old_screen);
  return (0);
 }
 screen_free(&old_screen);
 return (1);
}
