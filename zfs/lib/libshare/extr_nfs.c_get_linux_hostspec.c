
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SA_NO_MEMORY ;
 int SA_OK ;
 char* strdup (char const*) ;

__attribute__((used)) static int
get_linux_hostspec(const char *solaris_hostspec, char **plinux_hostspec)
{




 if (solaris_hostspec[0] == '@') {




  *plinux_hostspec = strdup(solaris_hostspec + 1);
 } else {
  *plinux_hostspec = strdup(solaris_hostspec);
 }

 if (*plinux_hostspec == ((void*)0)) {
  return (SA_NO_MEMORY);
 }

 return (SA_OK);
}
