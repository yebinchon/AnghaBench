
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_map {char const* key; scalar_t__ htab; } ;


 void* htab_find_with_hash (scalar_t__,struct string_map*,int ) ;
 int htab_hash_string (char const*) ;

void *
string_map_get(struct string_map *map, const char *key)
{
 if (map->htab) {
  map->key = key;
  return htab_find_with_hash(map->htab, map, htab_hash_string(key));
 }

 return ((void*)0);
}
