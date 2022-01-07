
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
skip_authority(char *path)
{
 char *p = path;


 if (p[0] != '/' || p[1] != '/')
  return path;
 p += 2;


 while (*p && *p != '/' && *p != '?')
  p++;

 return p;
}
