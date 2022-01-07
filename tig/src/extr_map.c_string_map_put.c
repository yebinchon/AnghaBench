
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_map {int dummy; } ;


 void** string_map_put_to (struct string_map*,char const*) ;

void *
string_map_put(struct string_map *map, const char *key, void *value)
{
 void **slot = string_map_put_to(map, key);

 if (!slot)
  return ((void*)0);

 *slot = value;
 return value;
}
