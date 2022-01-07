
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zed_strings_t ;
typedef int uint64_t ;


 char** _zed_exec_create_env (int *) ;
 int _zed_exec_fork_child (int ,char const*,char const*,char**,int) ;
 int free (char**) ;
 int isalpha (char const) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;
 char* zed_strings_first (int *) ;
 char* zed_strings_next (int *) ;

int
zed_exec_process(uint64_t eid, const char *class, const char *subclass,
    const char *dir, zed_strings_t *zedlets, zed_strings_t *envs, int zfd)
{
 const char *class_strings[4];
 const char *allclass = "all";
 const char **csp;
 const char *z;
 char **e;
 int n;

 if (!dir || !zedlets || !envs || zfd < 0)
  return (-1);

 csp = class_strings;

 if (class)
  *csp++ = class;

 if (subclass)
  *csp++ = subclass;

 if (allclass)
  *csp++ = allclass;

 *csp = ((void*)0);

 e = _zed_exec_create_env(envs);

 for (z = zed_strings_first(zedlets); z; z = zed_strings_next(zedlets)) {
  for (csp = class_strings; *csp; csp++) {
   n = strlen(*csp);
   if ((strncmp(z, *csp, n) == 0) && !isalpha(z[n]))
    _zed_exec_fork_child(eid, dir, z, e, zfd);
  }
 }
 free(e);
 return (0);
}
