
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_map {char* (* key_fn ) (void const*) ;int key; } ;


 int strcmp (char const*,int ) ;
 char* stub1 (void const*) ;

__attribute__((used)) static int
string_map_equal(const void *element, const void *map_)
{
 struct string_map *map = (struct string_map *) map_;
 const char *key = map->key_fn(element);

 return !strcmp(key, map->key);
}
