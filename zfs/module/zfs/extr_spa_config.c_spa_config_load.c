
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct _buf {int dummy; } ;
typedef int nvpair_t ;
typedef int nvlist_t ;


 scalar_t__ DATA_TYPE_NVLIST ;
 int KM_SLEEP ;
 int MAXPATHLEN ;
 int * fnvpair_value_nvlist (int *) ;
 void* kmem_alloc (int ,int ) ;
 int kmem_free (void*,int ) ;
 int kobj_close_file (struct _buf*) ;
 scalar_t__ kobj_get_filesize (struct _buf*,int *) ;
 struct _buf* kobj_open_file (char*) ;
 scalar_t__ kobj_read_file (struct _buf*,void*,int ,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int nvlist_free (int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 scalar_t__ nvlist_unpack (void*,int ,int **,int ) ;
 int nvpair_name (int *) ;
 scalar_t__ nvpair_type (int *) ;
 int snprintf (char*,int ,char*,char*) ;
 int spa_add (int ,int *,int *) ;
 char* spa_config_path ;
 int * spa_lookup (int ) ;
 int spa_namespace_lock ;
 scalar_t__ zfs_autoimport_disable ;

void
spa_config_load(void)
{
 void *buf = ((void*)0);
 nvlist_t *nvlist, *child;
 nvpair_t *nvpair;
 char *pathname;
 struct _buf *file;
 uint64_t fsize;
 pathname = kmem_alloc(MAXPATHLEN, KM_SLEEP);

 (void) snprintf(pathname, MAXPATHLEN, "%s", spa_config_path);

 file = kobj_open_file(pathname);

 kmem_free(pathname, MAXPATHLEN);

 if (file == (struct _buf *)-1)
  return;

 if (kobj_get_filesize(file, &fsize) != 0)
  goto out;

 buf = kmem_alloc(fsize, KM_SLEEP);




 if (kobj_read_file(file, buf, fsize, 0) < 0)
  goto out;




 if (nvlist_unpack(buf, fsize, &nvlist, KM_SLEEP) != 0)
  goto out;





 mutex_enter(&spa_namespace_lock);
 nvpair = ((void*)0);
 while ((nvpair = nvlist_next_nvpair(nvlist, nvpair)) != ((void*)0)) {
  if (nvpair_type(nvpair) != DATA_TYPE_NVLIST)
   continue;

  child = fnvpair_value_nvlist(nvpair);

  if (spa_lookup(nvpair_name(nvpair)) != ((void*)0))
   continue;
  (void) spa_add(nvpair_name(nvpair), child, ((void*)0));
 }
 mutex_exit(&spa_namespace_lock);

 nvlist_free(nvlist);

out:
 if (buf != ((void*)0))
  kmem_free(buf, fsize);

 kobj_close_file(file);
}
