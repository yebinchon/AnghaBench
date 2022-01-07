
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ea_name_index {int index; scalar_t__ name; } ;


 struct ea_name_index* ea_names ;
 int strlen (scalar_t__) ;
 scalar_t__ strncmp (char const*,scalar_t__,int) ;

__attribute__((used)) static int find_ea_index(const char *fullname, const char **name, int *index)
{
 struct ea_name_index *e;

 for (e = ea_names; e->name; e++) {
  if (strncmp(fullname, e->name, strlen(e->name)) == 0) {
   *name = fullname + strlen(e->name);
   *index = e->index;
   return 1;
  }
 }
 return 0;
}
