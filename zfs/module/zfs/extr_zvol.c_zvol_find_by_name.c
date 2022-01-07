
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zvol_state_t ;


 int * zvol_find_by_name_hash (char const*,int ,int) ;
 int zvol_name_hash (char const*) ;

__attribute__((used)) static zvol_state_t *
zvol_find_by_name(const char *name, int mode)
{
 return (zvol_find_by_name_hash(name, zvol_name_hash(name), mode));
}
