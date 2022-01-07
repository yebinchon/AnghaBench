
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_cookie; } ;
typedef TYPE_1__ zfs_cmd_t ;


 int zfs_zevent_drain_all (int*) ;

__attribute__((used)) static int
zfs_ioc_events_clear(zfs_cmd_t *zc)
{
 int count;

 zfs_zevent_drain_all(&count);
 zc->zc_cookie = count;

 return (0);
}
