
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;
typedef int libpc_handle_t ;
typedef int avl_tree_t ;


 int ENOENT ;
 int EZFS_BADPATH ;
 int MAXPATHLEN ;
 int TEXT_DOMAIN ;
 char* basename (char*) ;
 int dgettext (int ,char*) ;
 char* dirname (char*) ;
 int errno ;
 int free (char*) ;
 int * realpath (char*,char*) ;
 int strerror (int) ;
 int zpool_find_import_scan_add_slice (int *,int *,int *,char*,char*,int) ;
 int zutil_error_aux (int *,int ) ;
 int zutil_error_fmt (int *,int ,int ,char const*) ;
 char* zutil_strdup (int *,char const*) ;

__attribute__((used)) static int
zpool_find_import_scan_path(libpc_handle_t *hdl, pthread_mutex_t *lock,
    avl_tree_t *cache, const char *dir, int order)
{
 int error = 0;
 char path[MAXPATHLEN];
 char *d, *b;
 char *dpath, *name;
 d = zutil_strdup(hdl, dir);
 b = zutil_strdup(hdl, dir);
 dpath = dirname(d);
 name = basename(b);

 if (realpath(dpath, path) == ((void*)0)) {
  error = errno;
  if (error == ENOENT) {
   error = 0;
   goto out;
  }

  zutil_error_aux(hdl, strerror(error));
  (void) zutil_error_fmt(hdl, EZFS_BADPATH, dgettext(
      TEXT_DOMAIN, "cannot resolve path '%s'"), dir);
  goto out;
 }

 zpool_find_import_scan_add_slice(hdl, lock, cache, path, name, order);

out:
 free(b);
 free(d);
 return (error);
}
