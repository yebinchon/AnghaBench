
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zbookmark_phys_t ;
typedef int spa_t ;
typedef scalar_t__ boolean_t ;
typedef int arc_fill_flags_t ;
typedef int arc_buf_t ;


 int ARC_FILL_IN_PLACE ;
 int ECKSUM ;
 int EIO ;
 int FM_EREPORT_ZFS_AUTHENTICATION ;
 int SET_ERROR (int ) ;
 int arc_buf_fill (int *,int *,int const*,int ) ;
 int spa_log_error (int *,int const*) ;
 int zfs_ereport_post (int ,int *,int *,int const*,int *,int ,int ) ;

int
arc_untransform(arc_buf_t *buf, spa_t *spa, const zbookmark_phys_t *zb,
    boolean_t in_place)
{
 int ret;
 arc_fill_flags_t flags = 0;

 if (in_place)
  flags |= ARC_FILL_IN_PLACE;

 ret = arc_buf_fill(buf, spa, zb, flags);
 if (ret == ECKSUM) {




  ret = SET_ERROR(EIO);
  spa_log_error(spa, zb);
  zfs_ereport_post(FM_EREPORT_ZFS_AUTHENTICATION,
      spa, ((void*)0), zb, ((void*)0), 0, 0);
 }

 return (ret);
}
