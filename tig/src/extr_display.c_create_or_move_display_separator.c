
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*) ;
 scalar_t__ display_sep ;
 int mvwin (scalar_t__,int ,int) ;
 scalar_t__ newwin (int,int,int ,int) ;
 int wresize (scalar_t__,int,int) ;

__attribute__((used)) static void create_or_move_display_separator(int height, int x)
{
 if (!display_sep) {
  display_sep = newwin(height, 1, 0, x);
  if (!display_sep)
   die("Failed to create separator window");

 } else {
  wresize(display_sep, height, 1);
  mvwin(display_sep, 0, x);
 }
}
