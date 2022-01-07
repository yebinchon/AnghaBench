
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {scalar_t__ os_zil; int os_sync; } ;
typedef TYPE_1__ objset_t ;


 int ASSERT (int) ;
 int ZFS_SYNC_ALWAYS ;
 int ZFS_SYNC_DISABLED ;
 int ZFS_SYNC_STANDARD ;
 int zil_set_sync (scalar_t__,int ) ;

__attribute__((used)) static void
sync_changed_cb(void *arg, uint64_t newval)
{
 objset_t *os = arg;




 ASSERT(newval == ZFS_SYNC_STANDARD || newval == ZFS_SYNC_ALWAYS ||
     newval == ZFS_SYNC_DISABLED);

 os->os_sync = newval;
 if (os->os_zil)
  zil_set_sync(os->os_zil, newval);
}
