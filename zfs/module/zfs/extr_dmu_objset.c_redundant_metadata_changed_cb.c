
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ os_redundant_metadata; } ;
typedef TYPE_1__ objset_t ;


 int ASSERT (int) ;
 scalar_t__ ZFS_REDUNDANT_METADATA_ALL ;
 scalar_t__ ZFS_REDUNDANT_METADATA_MOST ;

__attribute__((used)) static void
redundant_metadata_changed_cb(void *arg, uint64_t newval)
{
 objset_t *os = arg;




 ASSERT(newval == ZFS_REDUNDANT_METADATA_ALL ||
     newval == ZFS_REDUNDANT_METADATA_MOST);

 os->os_redundant_metadata = newval;
}
