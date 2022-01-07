
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct envvars_map {scalar_t__ len; int path; scalar_t__ var; } ;
typedef int WCHAR ;


 scalar_t__ ExpandEnvironmentStringsW (scalar_t__,int ,int) ;

__attribute__((used)) static void init_envvars_map(struct envvars_map *map)
{
    while (map->var)
    {
        map->len = ExpandEnvironmentStringsW(map->var, map->path, sizeof(map->path)/sizeof(WCHAR));

        if (map->len) map->len--;
        map++;
    }
}
