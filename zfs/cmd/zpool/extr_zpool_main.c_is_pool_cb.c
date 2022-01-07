
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;


 scalar_t__ strcmp (char*,int ) ;
 int zpool_get_name (int *) ;

__attribute__((used)) static int
is_pool_cb(zpool_handle_t *zhp, void *data)
{
 char *name = data;
 if (strcmp(name, zpool_get_name(zhp)) == 0)
  return (1);

 return (0);
}
