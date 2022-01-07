
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_map_iterator {void* member_1; int member_0; } ;
struct string_map {scalar_t__ htab; } ;
typedef int string_map_iterator_fn ;


 int htab_traverse_noresize (scalar_t__,int ,struct string_map_iterator*) ;
 int string_map_iterate ;

void
string_map_foreach(struct string_map *map, string_map_iterator_fn fn, void *data)
{
 if (map->htab) {
  struct string_map_iterator iterator = { fn, data };

  htab_traverse_noresize(map->htab, string_map_iterate, &iterator);
 }
}
