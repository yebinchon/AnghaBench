
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char** cb_vdev_names; } ;
typedef TYPE_1__ iostat_cbdata_t ;


 int B_TRUE ;
 int for_each_pool (int,char**,int ,int *,int ,TYPE_1__*) ;
 int is_vdev ;

__attribute__((used)) static int
are_vdevs_in_pool(int argc, char **argv, char *pool_name,
    iostat_cbdata_t *cb)
{
 char **tmp_name;
 int ret = 0;
 int i;
 int pool_count = 0;

 if ((argc == 0) || !*argv)
  return (0);

 if (pool_name)
  pool_count = 1;


 tmp_name = cb->cb_vdev_names;


 for (i = 0; i < argc; i++) {
  cb->cb_vdev_names = argv + i;


  ret = for_each_pool(pool_count, &pool_name, B_TRUE, ((void*)0),
      is_vdev, cb);
  if (!ret) {

   break;
  }
 }

 cb->cb_vdev_names = tmp_name;

 return (ret);
}
