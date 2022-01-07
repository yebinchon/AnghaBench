
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char*,char) ;

void
StrRemoveTrailingSlashes(char *dst)
{
 char *cp;

 cp = strrchr(dst, '/');
 if ((cp == ((void*)0)) || (cp[1] != '\0'))
  return;


 while ((cp > dst) && (*cp == '/'))
  *cp-- = '\0';
}
