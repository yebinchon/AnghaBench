
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdev_t ;
typedef int spa_t ;
typedef int nvlist_t ;


 int * zfs_event_create (int *,int *,char const*,char const*,int *) ;
 int zfs_zevent_post (int *,int *,int ) ;
 int zfs_zevent_post_cb ;

__attribute__((used)) static void
zfs_post_common(spa_t *spa, vdev_t *vd, const char *type, const char *name,
    nvlist_t *aux)
{







}
