
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct window_pane {int dummy; } ;
struct input_ctx {struct window_pane* wp; } ;


 int colour_join_rgb (int ,int ,int ) ;
 int free (char*) ;
 int input_osc_parse_colour (char*,int *,int *,int *) ;
 int log_debug (char*,char const*) ;
 char* strsep (char**,char*) ;
 long strtol (char*,char**,int) ;
 int window_pane_set_palette (struct window_pane*,long,int ) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static void
input_osc_4(struct input_ctx *ictx, const char *p)
{
 struct window_pane *wp = ictx->wp;
 char *copy, *s, *next = ((void*)0);
 long idx;
 u_int r, g, b;

 copy = s = xstrdup(p);
 while (s != ((void*)0) && *s != '\0') {
  idx = strtol(s, &next, 10);
  if (*next++ != ';')
   goto bad;
  if (idx < 0 || idx >= 0x100)
   goto bad;

  s = strsep(&next, ";");
  if (!input_osc_parse_colour(s, &r, &g, &b)) {
   s = next;
   continue;
  }

  window_pane_set_palette(wp, idx, colour_join_rgb(r, g, b));
  s = next;
 }

 free(copy);
 return;

bad:
 log_debug("bad OSC 4: %s", p);
 free(copy);
}
