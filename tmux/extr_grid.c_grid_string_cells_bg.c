
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct grid_cell {int bg; } ;


 int COLOUR_FLAG_256 ;
 int COLOUR_FLAG_RGB ;
 int colour_split_rgb (int,int*,int*,int*) ;

__attribute__((used)) static size_t
grid_string_cells_bg(const struct grid_cell *gc, int *values)
{
 size_t n;
 u_char r, g, b;

 n = 0;
 if (gc->bg & COLOUR_FLAG_256) {
  values[n++] = 48;
  values[n++] = 5;
  values[n++] = gc->bg & 0xff;
 } else if (gc->bg & COLOUR_FLAG_RGB) {
  values[n++] = 48;
  values[n++] = 2;
  colour_split_rgb(gc->bg, &r, &g, &b);
  values[n++] = r;
  values[n++] = g;
  values[n++] = b;
 } else {
  switch (gc->bg) {
  case 0:
  case 1:
  case 2:
  case 3:
  case 4:
  case 5:
  case 6:
  case 7:
   values[n++] = gc->bg + 40;
   break;
  case 8:
   values[n++] = 49;
   break;
  case 100:
  case 101:
  case 102:
  case 103:
  case 104:
  case 105:
  case 106:
  case 107:
   values[n++] = gc->bg - 10;
   break;
  }
 }
 return (n);
}
