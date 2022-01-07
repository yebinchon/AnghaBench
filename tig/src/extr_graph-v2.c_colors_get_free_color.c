
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct colors {size_t* count; } ;


 int ARRAY_SIZE (size_t*) ;

__attribute__((used)) static size_t
colors_get_free_color(struct colors *colors)
{
 size_t free_color = 0;
 size_t lowest = (size_t) -1;
 int i;

 for (i = 0; i < ARRAY_SIZE(colors->count); i++) {
  if (colors->count[i] < lowest) {
   lowest = colors->count[i];
   free_color = i;
  }
 }
 return free_color;
}
