
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct graph_v2 {int colors; } ;


 int colors_add_id (int *,char const*,size_t) ;
 size_t colors_get_color (int *,char const*) ;
 size_t colors_get_free_color (int *) ;
 int colors_init (int *) ;

__attribute__((used)) static size_t
get_color(struct graph_v2 *graph, const char *new_id)
{
 size_t color;

 if (!new_id)
  new_id = "";

 colors_init(&graph->colors);
 color = colors_get_color(&graph->colors, new_id);

 if (color < (size_t) -1) {
  return color;
 }

 color = colors_get_free_color(&graph->colors);
 colors_add_id(&graph->colors, new_id, color);

 return color;
}
