
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char*) ;

char *
get_filename_without_base(char *component_base,
                          char *filename)
{
  return &filename[strlen(component_base)];
}
