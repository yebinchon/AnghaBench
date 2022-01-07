
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delwin (int *) ;
 int * display_sep ;

__attribute__((used)) static void remove_display_separator(void)
{
 if (display_sep) {
  delwin(display_sep);
  display_sep = ((void*)0);
 }
}
