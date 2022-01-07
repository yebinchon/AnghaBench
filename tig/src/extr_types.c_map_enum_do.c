
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enum_map_entry {int value; } ;


 scalar_t__ enum_equals (struct enum_map_entry const,char const*,size_t) ;
 size_t strlen (char const*) ;

bool
map_enum_do(const struct enum_map_entry *map, size_t map_size, int *value, const char *name)
{
 size_t namelen = strlen(name);
 int i;

 for (i = 0; i < map_size; i++)
  if (enum_equals(map[i], name, namelen)) {
   *value = map[i].value;
   return 1;
  }

 return 0;
}
