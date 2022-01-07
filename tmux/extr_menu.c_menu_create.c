
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu {int title; } ;


 struct menu* xcalloc (int,int) ;
 int xstrdup (char const*) ;

struct menu *
menu_create(const char *title)
{
 struct menu *menu;

 menu = xcalloc(1, sizeof *menu);
 menu->title = xstrdup(title);

 return (menu);
}
