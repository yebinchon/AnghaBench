
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strstr (char*,char*) ;

__attribute__((used)) static int is_dynalab(char *name)
{
 if (strstr(name, "HuaTian"))
  return 1;
 if (strstr(name, "MingLi"))
  return 1;
 if ((strstr(name, "DF") == name) || strstr(name, "+DF"))
  return 1;
 if ((strstr(name, "DLC") == name) || strstr(name, "+DLC"))
  return 1;
 return 0;
}
