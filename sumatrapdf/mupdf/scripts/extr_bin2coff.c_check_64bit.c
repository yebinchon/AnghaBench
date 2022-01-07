
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int check_64bit(const char *arg, int *x86_32)
{
 if ((strcmp(arg, "64bit") == 0) || (strcmp(arg, "x64") == 0))
  *x86_32 = 0;
 else if ((strcmp(arg, "32bit") == 0) || (strcmp(arg, "Win32") == 0))
  *x86_32 = 1;
 else
  return 0;
 return 1;
}
