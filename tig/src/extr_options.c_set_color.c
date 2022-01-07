
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SUCCESS ;
 int color_map ;
 scalar_t__ map_enum (int*,int ,char const*) ;
 scalar_t__ parse_int (int*,char const*,int ,int) ;
 int prefixcmp (char const*,char*) ;
 scalar_t__ string_isnumber (char const*) ;

__attribute__((used)) static bool
set_color(int *color, const char *name)
{
 if (map_enum(color, color_map, name))
  return 1;


 if (!prefixcmp(name, "color"))
  name += 5;
 return string_isnumber(name) &&
        parse_int(color, name, 0, 255) == SUCCESS;
}
