
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zprop_list_t ;
typedef int zpool_list_t ;
typedef int zpool_iter_f ;
typedef int boolean_t ;


 int pool_list_free (int *) ;
 int * pool_list_get (int,char**,int **,int*) ;
 scalar_t__ pool_list_iter (int *,int ,int ,void*) ;

int
for_each_pool(int argc, char **argv, boolean_t unavail,
    zprop_list_t **proplist, zpool_iter_f func, void *data)
{
 zpool_list_t *list;
 int ret = 0;

 if ((list = pool_list_get(argc, argv, proplist, &ret)) == ((void*)0))
  return (1);

 if (pool_list_iter(list, unavail, func, data) != 0)
  ret = 1;

 pool_list_free(list);

 return (ret);
}
