
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ea_name_index {char const* name; int index; } ;


 struct ea_name_index* ea_names ;

__attribute__((used)) static const char *find_ea_prefix(int index)
{
 struct ea_name_index *e;

 for (e = ea_names; e->name; e++)
  if (e->index == index)
   return e->name;

 return ((void*)0);
}
