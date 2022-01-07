
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct id_color {size_t color; } ;
struct colors {int id_map; } ;


 scalar_t__ htab_find (int ,struct id_color*) ;
 int id_color_delete (struct id_color*) ;
 struct id_color* id_color_new (char const*,int ) ;

__attribute__((used)) static size_t
colors_get_color(struct colors *colors, const char *id)
{
 struct id_color *key = id_color_new(id, 0);
 struct id_color *node = (struct id_color *) htab_find(colors->id_map, key);

 id_color_delete(key);

 if (node == ((void*)0)) {
  return (size_t) -1;
 }
 return node->color;
}
