
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line {char* a; char* b; } ;


 int fz_chartorune (int*,char*) ;
 float ui_measure_character (int) ;

int ui_break_lines(char *a, struct line *lines, int maxlines, int width, int *maxwidth)
{
 char *next, *space = ((void*)0), *b = a;
 int c, n = 0;
 float space_x, x = 0, w = 0;

 if (maxwidth)
  *maxwidth = 0;

 while (*b)
 {
  next = b + fz_chartorune(&c, b);
  if (c == '\r' || c == '\n')
  {
   if (lines && n < maxlines)
   {
    lines[n].a = a;
    lines[n].b = b;
   }
   ++n;
   if (maxwidth && *maxwidth < x)
    *maxwidth = x;
   a = next;
   x = 0;
   space = ((void*)0);
  }
  else
  {
   if (c == ' ')
   {
    space = b;
    space_x = x;
   }

   w = ui_measure_character(c);
   if (x + w > width)
   {
    if (space)
    {
     if (lines && n < maxlines)
     {
      lines[n].a = a;
      lines[n].b = space;
     }
     ++n;
     if (maxwidth && *maxwidth < space_x)
      *maxwidth = space_x;
     a = next = space + 1;
     x = 0;
     space = ((void*)0);
    }
    else
    {
     if (lines && n < maxlines)
     {
      lines[n].a = a;
      lines[n].b = b;
     }
     ++n;
     if (maxwidth && *maxwidth < x)
      *maxwidth = x;
     a = b;
     x = w;
     space = ((void*)0);
    }
   }
   else
   {
    x += w;
   }
  }
  b = next;
 }

 if (lines && n < maxlines)
 {
  lines[n].a = a;
  lines[n].b = b;
 }
 ++n;
 if (maxwidth && *maxwidth < x)
  *maxwidth = x;
 return n < maxlines ? n : maxlines;
}
