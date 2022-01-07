
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct window_pane {int event; int id; struct screen* screen; } ;
struct screen {int mode; } ;
struct mouse_event {int b; char sgr_type; int sgr_b; int lb; } ;


 int ALL_MOUSE_MODES ;
 int MODE_MOUSE_ALL ;
 int MODE_MOUSE_BUTTON ;
 int MODE_MOUSE_SGR ;
 int MODE_MOUSE_UTF8 ;
 int MOUSE_BUTTONS (int) ;
 scalar_t__ MOUSE_DRAG (int) ;
 int bufferevent_write (int ,char*,size_t) ;
 scalar_t__ cmd_mouse_at (struct window_pane*,struct mouse_event*,int*,int*,int ) ;
 scalar_t__ input_split2 (int,char*) ;
 int log_debug (char*,int,char*,int ) ;
 int window_pane_visible (struct window_pane*) ;
 size_t xsnprintf (char*,int,char*,...) ;

__attribute__((used)) static void
input_key_mouse(struct window_pane *wp, struct mouse_event *m)
{
 struct screen *s = wp->screen;
 int mode = s->mode;
 char buf[40];
 size_t len;
 u_int x, y;

 if ((mode & ALL_MOUSE_MODES) == 0)
  return;
 if (cmd_mouse_at(wp, m, &x, &y, 0) != 0)
  return;
 if (!window_pane_visible(wp))
  return;


 if (MOUSE_DRAG(m->b) &&
     (mode & (MODE_MOUSE_BUTTON|MODE_MOUSE_ALL)) == 0)
     return;







 if (m->sgr_type != ' ') {
  if (MOUSE_DRAG(m->sgr_b) &&
      MOUSE_BUTTONS(m->sgr_b) == 3 &&
      (~mode & MODE_MOUSE_ALL))
   return;
 } else {
  if (MOUSE_DRAG(m->b) &&
      MOUSE_BUTTONS(m->b) == 3 &&
      MOUSE_BUTTONS(m->lb) == 3 &&
      (~mode & MODE_MOUSE_ALL))
   return;
 }
 if (m->sgr_type != ' ' && (s->mode & MODE_MOUSE_SGR)) {
  len = xsnprintf(buf, sizeof buf, "\033[<%u;%u;%u%c",
      m->sgr_b, x + 1, y + 1, m->sgr_type);
 } else if (s->mode & MODE_MOUSE_UTF8) {
  if (m->b > 0x7ff - 32 || x > 0x7ff - 33 || y > 0x7ff - 33)
   return;
  len = xsnprintf(buf, sizeof buf, "\033[M");
  len += input_split2(m->b + 32, &buf[len]);
  len += input_split2(x + 33, &buf[len]);
  len += input_split2(y + 33, &buf[len]);
 } else {
  if (m->b > 223)
   return;
  len = xsnprintf(buf, sizeof buf, "\033[M");
  buf[len++] = m->b + 32;
  buf[len++] = x + 33;
  buf[len++] = y + 33;
 }
 log_debug("writing mouse %.*s to %%%u", (int)len, buf, wp->id);
 bufferevent_write(wp->event, buf, len);
}
