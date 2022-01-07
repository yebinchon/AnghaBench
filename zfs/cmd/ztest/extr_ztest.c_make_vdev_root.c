
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int ASSERT (int) ;
 int NV_UNIQUE_NAME ;
 int UMEM_NOFAIL ;
 char const* VDEV_TYPE_ROOT ;
 int VERIFY (int) ;
 int ZPOOL_CONFIG_ALLOCATION_BIAS ;
 char* ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_IS_LOG ;
 int ZPOOL_CONFIG_TYPE ;
 int * make_vdev_mirror (char*,char*,char*,size_t,int ,int,int) ;
 scalar_t__ nvlist_add_nvlist_array (int *,char*,int **,int) ;
 scalar_t__ nvlist_add_string (int *,int ,char const*) ;
 scalar_t__ nvlist_add_uint64 (int *,int ,int) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 int ** umem_alloc (int,int ) ;
 int umem_free (int **,int) ;

__attribute__((used)) static nvlist_t *
make_vdev_root(char *path, char *aux, char *pool, size_t size, uint64_t ashift,
    const char *class, int r, int m, int t)
{
 nvlist_t *root, **child;
 int c;
 boolean_t log;

 ASSERT(t > 0);

 log = (class != ((void*)0) && strcmp(class, "log") == 0);

 child = umem_alloc(t * sizeof (nvlist_t *), UMEM_NOFAIL);

 for (c = 0; c < t; c++) {
  child[c] = make_vdev_mirror(path, aux, pool, size, ashift,
      r, m);
  VERIFY(nvlist_add_uint64(child[c], ZPOOL_CONFIG_IS_LOG,
      log) == 0);

  if (class != ((void*)0) && class[0] != '\0') {
   ASSERT(m > 1 || log);
   VERIFY(nvlist_add_string(child[c],
       ZPOOL_CONFIG_ALLOCATION_BIAS, class) == 0);
  }
 }

 VERIFY(nvlist_alloc(&root, NV_UNIQUE_NAME, 0) == 0);
 VERIFY(nvlist_add_string(root, ZPOOL_CONFIG_TYPE, VDEV_TYPE_ROOT) == 0);
 VERIFY(nvlist_add_nvlist_array(root, aux ? aux : ZPOOL_CONFIG_CHILDREN,
     child, t) == 0);

 for (c = 0; c < t; c++)
  nvlist_free(child[c]);

 umem_free(child, t * sizeof (nvlist_t *));

 return (root);
}
