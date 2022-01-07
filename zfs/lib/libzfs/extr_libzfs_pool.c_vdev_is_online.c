
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvlist_t ;


 int ZPOOL_CONFIG_FAULTED ;
 int ZPOOL_CONFIG_OFFLINE ;
 int ZPOOL_CONFIG_REMOVED ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int *) ;

__attribute__((used)) static int
vdev_is_online(nvlist_t *nv)
{
 uint64_t ival;

 if (nvlist_lookup_uint64(nv, ZPOOL_CONFIG_OFFLINE, &ival) == 0 ||
     nvlist_lookup_uint64(nv, ZPOOL_CONFIG_FAULTED, &ival) == 0 ||
     nvlist_lookup_uint64(nv, ZPOOL_CONFIG_REMOVED, &ival) == 0)
  return (0);

 return (1);
}
