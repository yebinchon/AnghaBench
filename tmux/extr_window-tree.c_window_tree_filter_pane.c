
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winlink {int dummy; } ;
struct window_pane {int dummy; } ;
struct session {int dummy; } ;


 char* format_single (int *,char const*,int *,struct session*,struct winlink*,struct window_pane*) ;
 int format_true (char*) ;
 int free (char*) ;

__attribute__((used)) static int
window_tree_filter_pane(struct session *s, struct winlink *wl,
    struct window_pane *wp, const char *filter)
{
 char *cp;
 int result;

 if (filter == ((void*)0))
  return (1);

 cp = format_single(((void*)0), filter, ((void*)0), s, wl, wp);
 result = format_true(cp);
 free(cp);

 return (result);
}
