
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_map {int htab; } ;


 int htab_clear_slot (int ,void**) ;
 void** string_map_get_at (struct string_map*,char const*) ;

void *
string_map_remove(struct string_map *map, const char *key)
{
 void *value = ((void*)0);
 void **slot = string_map_get_at(map, key);

 if (slot) {
  value = *slot;
  htab_clear_slot(map->htab, slot);
 }

 return value;
}
