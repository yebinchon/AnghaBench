
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int luaT_fullparentname (char const*,char*) ;

int luaT_classmodulename(const char *tname, char *parent_name)
{
  return luaT_fullparentname(tname, parent_name);
}
