
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct id_color {int dummy; } ;
struct colors {int * count; int id_map; } ;


 int INSERT ;
 void** htab_find_slot (int ,struct id_color*,int ) ;
 int id_color_delete (struct id_color*) ;
 struct id_color* id_color_new (char const*,size_t const) ;

__attribute__((used)) static void
colors_add_id(struct colors *colors, const char *id, const size_t color)
{
 struct id_color *node = id_color_new(id, color);
 void **slot = htab_find_slot(colors->id_map, node, INSERT);

 if (slot != ((void*)0) && *slot == ((void*)0)) {
  *slot = node;
  colors->count[color]++;
 } else {
  id_color_delete(node);
 }
}
