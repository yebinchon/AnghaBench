
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvlist_t ;


 int NV_UNIQUE_NAME ;
 int UMEM_NOFAIL ;
 int VDEV_TYPE_MIRROR ;
 int VERIFY (int) ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_TYPE ;
 int * make_vdev_raidz (char*,char*,char*,size_t,int ,int) ;
 scalar_t__ nvlist_add_nvlist_array (int *,int ,int **,int) ;
 scalar_t__ nvlist_add_string (int *,int ,int ) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int ** umem_alloc (int,int ) ;
 int umem_free (int **,int) ;

__attribute__((used)) static nvlist_t *
make_vdev_mirror(char *path, char *aux, char *pool, size_t size,
    uint64_t ashift, int r, int m)
{
 nvlist_t *mirror, **child;
 int c;

 if (m < 1)
  return (make_vdev_raidz(path, aux, pool, size, ashift, r));

 child = umem_alloc(m * sizeof (nvlist_t *), UMEM_NOFAIL);

 for (c = 0; c < m; c++)
  child[c] = make_vdev_raidz(path, aux, pool, size, ashift, r);

 VERIFY(nvlist_alloc(&mirror, NV_UNIQUE_NAME, 0) == 0);
 VERIFY(nvlist_add_string(mirror, ZPOOL_CONFIG_TYPE,
     VDEV_TYPE_MIRROR) == 0);
 VERIFY(nvlist_add_nvlist_array(mirror, ZPOOL_CONFIG_CHILDREN,
     child, m) == 0);

 for (c = 0; c < m; c++)
  nvlist_free(child[c]);

 umem_free(child, m * sizeof (nvlist_t *));

 return (mirror);
}
