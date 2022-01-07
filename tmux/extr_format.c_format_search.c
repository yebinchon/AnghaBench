
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int dummy; } ;
struct format_modifier {int argc; int * argv; } ;


 int * strchr (int ,char) ;
 int window_pane_search (struct window_pane*,char const*,int,int) ;
 int xasprintf (char**,char*,int ) ;

__attribute__((used)) static char *
format_search(struct format_modifier *fm, struct window_pane *wp, const char *s)
{
 int ignore = 0, regex = 0;
 char *value;

 if (fm->argc >= 1) {
  if (strchr(fm->argv[0], 'i') != ((void*)0))
   ignore = 1;
  if (strchr(fm->argv[0], 'r') != ((void*)0))
   regex = 1;
 }
 xasprintf(&value, "%u", window_pane_search(wp, s, regex, ignore));
 return (value);
}
