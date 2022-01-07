
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;


 int error_loc (char*,char const*) ;
 int * find_type (char const*,int *,int) ;

__attribute__((used)) static type_t *find_type_or_error(const char *name, int t)
{
  type_t *type = find_type(name, ((void*)0), t);
  if (!type) {
    error_loc("type '%s' not found\n", name);
    return ((void*)0);
  }
  return type;
}
