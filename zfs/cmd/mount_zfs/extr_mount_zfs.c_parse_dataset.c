
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat64 {int dummy; } ;
typedef int nvlist_t ;


 int O_RDONLY ;
 int PATH_MAX ;
 int ZPOOL_CONFIG_POOL_NAME ;
 int close (int) ;
 int * getcwd (char*,int) ;
 int nvlist_free (int *) ;
 int nvlist_lookup_string (int *,int ,char**) ;
 int open (char*,int ) ;
 int stat64 (char*,struct stat64*) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int zpool_read_label (int,int **,int *) ;

__attribute__((used)) static char *
parse_dataset(char *dataset)
{
 char cwd[PATH_MAX];
 struct stat64 statbuf;
 int error;
 int len;







 error = stat64(dataset, &statbuf);
 if (error == 0) {
  nvlist_t *config;
  char *name;
  int fd;

  fd = open(dataset, O_RDONLY);
  if (fd < 0)
   goto out;

  error = zpool_read_label(fd, &config, ((void*)0));
  (void) close(fd);
  if (error)
   goto out;

  error = nvlist_lookup_string(config,
      ZPOOL_CONFIG_POOL_NAME, &name);
  if (error) {
   nvlist_free(config);
  } else {
   dataset = strdup(name);
   nvlist_free(config);
   return (dataset);
  }
 }
out:







 if (getcwd(cwd, PATH_MAX) == ((void*)0))
  return (dataset);

 len = strlen(cwd);


 if (strncmp(cwd, dataset, len) == 0)
  return (dataset + len + (cwd[len-1] != '/'));

 return (dataset);
}
