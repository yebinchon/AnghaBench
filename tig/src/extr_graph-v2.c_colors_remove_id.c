
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct id_color {size_t color; } ;
struct colors {int id_map; int * count; } ;


 int NO_INSERT ;
 int htab_clear_slot (int ,void**) ;
 void** htab_find_slot (int ,struct id_color*,int ) ;
 int id_color_delete (struct id_color*) ;
 struct id_color* id_color_new (char const*,int ) ;

__attribute__((used)) static void
colors_remove_id(struct colors *colors, const char *id)
{
 struct id_color *node = id_color_new(id, 0);
 void **slot = htab_find_slot(colors->id_map, node, NO_INSERT);

 if (slot != ((void*)0) && *slot != ((void*)0)) {
  colors->count[((struct id_color *) *slot)->color]--;
  htab_clear_slot(colors->id_map, slot);
 }

 id_color_delete(node);
}
