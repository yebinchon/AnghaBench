
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct line {int b; int a; } ;
struct TYPE_2__ {float lineheight; } ;


 char* find_string_location (int ,int ,float,float) ;
 TYPE_1__ ui ;

__attribute__((used)) static char *find_input_location(struct line *lines, int n, float left, float top, float x, float y)
{
 int i = 0;
 if (y > top) i = (y - top) / ui.lineheight;
 if (i >= n) i = n - 1;
 return find_string_location(lines[i].a, lines[i].b, left, x);
}
