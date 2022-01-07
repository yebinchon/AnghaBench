
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int NV_UNIQUE_NAME ;
 int VERIFY0 (int ) ;
 int ZPOOL_PROP_AUTOREPLACE ;
 int nvlist_add_uint64 (int *,int ,int) ;
 int nvlist_alloc (int **,int ,int ) ;
 int zpool_prop_to_name (int ) ;
 scalar_t__ ztest_random (int) ;

__attribute__((used)) static nvlist_t *
make_random_props(void)
{
 nvlist_t *props;

 VERIFY0(nvlist_alloc(&props, NV_UNIQUE_NAME, 0));

 if (ztest_random(2) == 0)
  return (props);

 VERIFY0(nvlist_add_uint64(props,
     zpool_prop_to_name(ZPOOL_PROP_AUTOREPLACE), 1));

 return (props);
}
