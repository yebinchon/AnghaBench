
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_mode_entry {int dummy; } ;


 int window_copy_copy_buffer (struct window_mode_entry*,char const*,char*,size_t) ;
 char* window_copy_get_selection (struct window_mode_entry*,size_t*) ;

__attribute__((used)) static void
window_copy_copy_selection(struct window_mode_entry *wme, const char *prefix)
{
 char *buf;
 size_t len;

 buf = window_copy_get_selection(wme, &len);
 if (buf != ((void*)0))
  window_copy_copy_buffer(wme, prefix, buf, len);
}
