
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;
 char* string_trim_end (char*) ;

char *
string_trim(char *name)
{
 while (isspace(*name))
  name++;

 return string_trim_end(name);
}
