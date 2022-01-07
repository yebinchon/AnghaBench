
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent64 {char* d_name; } ;
typedef int pthread_mutex_t ;
typedef int libpc_handle_t ;
typedef int avl_tree_t ;
typedef int DIR ;


 int ENOENT ;
 int EZFS_BADPATH ;
 int MAXPATHLEN ;
 int TEXT_DOMAIN ;
 int closedir (int *) ;
 int dgettext (int ,char*) ;
 int errno ;
 int * opendir (char*) ;
 struct dirent64* readdir64 (int *) ;
 int * realpath (char const*,char*) ;
 int strerror (int) ;
 int zpool_find_import_scan_add_slice (int *,int *,int *,char*,char const*,int) ;
 int zutil_error_aux (int *,int ) ;
 int zutil_error_fmt (int *,int ,int ,char const*) ;

__attribute__((used)) static int
zpool_find_import_scan_dir(libpc_handle_t *hdl, pthread_mutex_t *lock,
    avl_tree_t *cache, const char *dir, int order)
{
 int error;
 char path[MAXPATHLEN];
 struct dirent64 *dp;
 DIR *dirp;

 if (realpath(dir, path) == ((void*)0)) {
  error = errno;
  if (error == ENOENT)
   return (0);

  zutil_error_aux(hdl, strerror(error));
  (void) zutil_error_fmt(hdl, EZFS_BADPATH, dgettext(
      TEXT_DOMAIN, "cannot resolve path '%s'"), dir);
  return (error);
 }

 dirp = opendir(path);
 if (dirp == ((void*)0)) {
  error = errno;
  zutil_error_aux(hdl, strerror(error));
  (void) zutil_error_fmt(hdl, EZFS_BADPATH,
      dgettext(TEXT_DOMAIN, "cannot open '%s'"), path);
  return (error);
 }

 while ((dp = readdir64(dirp)) != ((void*)0)) {
  const char *name = dp->d_name;
  if (name[0] == '.' &&
      (name[1] == 0 || (name[1] == '.' && name[2] == 0)))
   continue;

  zpool_find_import_scan_add_slice(hdl, lock, cache, path, name,
      order);
 }

 (void) closedir(dirp);
 return (0);
}
