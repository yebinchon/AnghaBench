
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;
 int strlen (char*) ;

char *
string_trim_end(char *name)
{
 int namelen = strlen(name) - 1;

 while (namelen > 0 && isspace(name[namelen]))
  name[namelen--] = 0;

 return name;
}
