
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_namespace ;
 int * find_type (char const*,int ,int ) ;

int is_type(const char *name)
{
  return find_type(name, current_namespace, 0) != ((void*)0);
}
