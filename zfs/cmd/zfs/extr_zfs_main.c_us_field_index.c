
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USFIELD_LAST ;
 scalar_t__ strcmp (char*,int ) ;
 int * us_field_names ;

__attribute__((used)) static int
us_field_index(char *field)
{
 int i;

 for (i = 0; i < USFIELD_LAST; i++) {
  if (strcmp(field, us_field_names[i]) == 0)
   return (i);
 }

 return (-1);
}
