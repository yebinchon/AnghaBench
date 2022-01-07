
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int dummy; } ;
struct window_mode_entry {struct window_pane* wp; } ;
struct screen_write_ctx {int dummy; } ;
struct paste_buffer {int dummy; } ;


 int free (char*) ;
 int global_options ;
 int memcpy (char*,char const*,size_t) ;
 int memmove (char*,char*,size_t) ;
 int notify_pane (char*,struct window_pane*) ;
 scalar_t__ options_get_number (int ,char*) ;
 char* paste_buffer_data (struct paste_buffer*,size_t*) ;
 struct paste_buffer* paste_get_top (char const**) ;
 scalar_t__ paste_set (char*,size_t,char const*,int *) ;
 int screen_write_setselection (struct screen_write_ctx*,char*,size_t) ;
 int screen_write_start (struct screen_write_ctx*,struct window_pane*,int *) ;
 int screen_write_stop (struct screen_write_ctx*) ;
 char* window_copy_get_selection (struct window_mode_entry*,size_t*) ;
 char* xrealloc (char*,size_t) ;

__attribute__((used)) static void
window_copy_append_selection(struct window_mode_entry *wme)
{
 struct window_pane *wp = wme->wp;
 char *buf;
 struct paste_buffer *pb;
 const char *bufdata, *bufname = ((void*)0);
 size_t len, bufsize;
 struct screen_write_ctx ctx;

 buf = window_copy_get_selection(wme, &len);
 if (buf == ((void*)0))
  return;

 if (options_get_number(global_options, "set-clipboard") != 0) {
  screen_write_start(&ctx, wp, ((void*)0));
  screen_write_setselection(&ctx, buf, len);
  screen_write_stop(&ctx);
  notify_pane("pane-set-clipboard", wp);
 }

 pb = paste_get_top(&bufname);
 if (pb != ((void*)0)) {
  bufdata = paste_buffer_data(pb, &bufsize);
  buf = xrealloc(buf, len + bufsize);
  memmove(buf + bufsize, buf, len);
  memcpy(buf, bufdata, bufsize);
  len += bufsize;
 }
 if (paste_set(buf, len, bufname, ((void*)0)) != 0)
  free(buf);
}
