
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;
typedef int buf ;
typedef int DIR ;


 int MAXPATHLEN ;
 int asprintf (char**,char*,char const*,...) ;
 int closedir (int *) ;
 int free (char*) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 size_t readlink (char*,char*,int) ;
 char* strrchr (char const*,char) ;
 char* strstr (char*,char*) ;

char *
zfs_get_enclosure_sysfs_path(const char *dev_name)
{
 DIR *dp = ((void*)0);
 struct dirent *ep;
 char buf[MAXPATHLEN];
 char *tmp1 = ((void*)0);
 char *tmp2 = ((void*)0);
 char *tmp3 = ((void*)0);
 char *path = ((void*)0);
 size_t size;
 int tmpsize;

 if (dev_name == ((void*)0))
  return (((void*)0));


 tmp1 = strrchr(dev_name, '/');
 if (tmp1 != ((void*)0))
  dev_name = tmp1 + 1;

 tmpsize = asprintf(&tmp1, "/sys/block/%s/device", dev_name);
 if (tmpsize == -1 || tmp1 == ((void*)0)) {
  tmp1 = ((void*)0);
  goto end;
 }

 dp = opendir(tmp1);
 if (dp == ((void*)0)) {
  tmp1 = ((void*)0);
  goto end;
 }





 while ((ep = readdir(dp))) {

  if (strstr(ep->d_name, "enclosure_device") == ((void*)0))
   continue;

  if (asprintf(&tmp2, "%s/%s", tmp1, ep->d_name) == -1 ||
      tmp2 == ((void*)0))
   break;

  size = readlink(tmp2, buf, sizeof (buf));


  if (size == -1 || size >= sizeof (buf)) {
   free(tmp2);
   tmp2 = ((void*)0);
   break;
  }





  buf[size] = '\0';
  tmp3 = strstr(buf, "enclosure");
  if (tmp3 == ((void*)0))
   break;

  if (asprintf(&path, "/sys/class/%s", tmp3) == -1) {

   path = ((void*)0);
   break;
  }

  if (path == ((void*)0))
   break;
 }

end:
 free(tmp2);
 free(tmp1);

 if (dp != ((void*)0))
  closedir(dp);

 return (path);
}
