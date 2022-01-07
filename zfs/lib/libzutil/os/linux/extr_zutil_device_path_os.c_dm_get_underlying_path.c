
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {scalar_t__ d_type; char* d_name; } ;
typedef int DIR ;


 scalar_t__ DT_DIR ;
 int asprintf (char**,char*,char*) ;
 int closedir (int *) ;
 int free (char*) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 char* realpath (char const*,int *) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static char *
dm_get_underlying_path(const char *dm_name)
{
 DIR *dp = ((void*)0);
 struct dirent *ep;
 char *realp;
 char *tmp = ((void*)0);
 char *path = ((void*)0);
 char *dev_str;
 int size;

 if (dm_name == ((void*)0))
  return (((void*)0));


 realp = realpath(dm_name, ((void*)0));
 if (realp == ((void*)0))
  return (((void*)0));





 tmp = strrchr(realp, '/');
 if (tmp != ((void*)0))
  dev_str = tmp + 1;
 else
  dev_str = tmp;

 size = asprintf(&tmp, "/sys/block/%s/slaves/", dev_str);
 if (size == -1 || !tmp)
  goto end;

 dp = opendir(tmp);
 if (dp == ((void*)0))
  goto end;


 while ((ep = readdir(dp))) {
  if (ep->d_type != DT_DIR) {
   size = asprintf(&path, "/dev/%s", ep->d_name);
   break;
  }
 }

end:
 if (dp != ((void*)0))
  closedir(dp);
 free(tmp);
 free(realp);
 return (path);
}
