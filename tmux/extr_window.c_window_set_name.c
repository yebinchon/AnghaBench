
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window {int name; } ;


 int VIS_CSTYLE ;
 int VIS_NL ;
 int VIS_OCTAL ;
 int VIS_TAB ;
 int free (int ) ;
 int notify_window (char*,struct window*) ;
 int utf8_stravis (int *,char const*,int) ;

void
window_set_name(struct window *w, const char *new_name)
{
 free(w->name);
 utf8_stravis(&w->name, new_name, VIS_OCTAL|VIS_CSTYLE|VIS_TAB|VIS_NL);
 notify_window("window-renamed", w);
}
