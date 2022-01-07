
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getprogname () ;
 scalar_t__ strcmp (char const*,char const*) ;
 char* strrchr (char const*,char) ;

int
areshell(const char *shell)
{
 const char *progname, *ptr;

 if ((ptr = strrchr(shell, '/')) != ((void*)0))
  ptr++;
 else
  ptr = shell;
 progname = getprogname();
 if (*progname == '-')
  progname++;
 if (strcmp(ptr, progname) == 0)
  return (1);
 return (0);
}
