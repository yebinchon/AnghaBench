
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ os_primary_cache; } ;
typedef TYPE_1__ objset_t ;


 int ASSERT (int) ;
 scalar_t__ ZFS_CACHE_ALL ;
 scalar_t__ ZFS_CACHE_METADATA ;
 scalar_t__ ZFS_CACHE_NONE ;

__attribute__((used)) static void
primary_cache_changed_cb(void *arg, uint64_t newval)
{
 objset_t *os = arg;




 ASSERT(newval == ZFS_CACHE_ALL || newval == ZFS_CACHE_NONE ||
     newval == ZFS_CACHE_METADATA);

 os->os_primary_cache = newval;
}
