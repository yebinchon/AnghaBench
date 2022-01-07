
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int dummy; } ;


 int PATH_MAX ;
 int free (char*) ;
 int * realpath (char*,char*) ;
 int server_client_get_cwd (struct client*,int *) ;
 int xasprintf (char**,char*,int ,char const*) ;
 char* xstrdup (char const*) ;

char *
server_client_get_path(struct client *c, const char *file)
{
 char *path, resolved[PATH_MAX];

 if (*file == '/')
  path = xstrdup(file);
 else
  xasprintf(&path, "%s/%s", server_client_get_cwd(c, ((void*)0)), file);
 if (realpath(path, resolved) == ((void*)0))
  return (path);
 free(path);
 return (xstrdup(resolved));
}
