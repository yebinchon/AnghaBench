
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_map {scalar_t__ htab; } ;


 int htab_empty (scalar_t__) ;

void
string_map_clear(struct string_map *map)
{
 if (map->htab)
  htab_empty(map->htab);
}
