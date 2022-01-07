
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** environ ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

int
unsetenv(const char *name)
{
 char **envptr;
 int namelen;

 namelen = strlen(name);
 for (envptr = environ; *envptr != ((void*)0); envptr++) {
  if (strncmp(name, *envptr, namelen) == 0 &&
      ((*envptr)[namelen] == '=' || (*envptr)[namelen] == '\0'))
   break;
 }
 for (; *envptr != ((void*)0); envptr++)
  *envptr = *(envptr + 1);
 return (0);
}
