
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_stat_t ;
typedef int uint64_t ;
typedef int sa_handle_t ;
typedef int sa_attr_type_t ;
typedef int objset_t ;
typedef int dmu_buf_t ;


 int FTAG ;
 int zfs_grab_sa_handle (int *,int ,int **,int **,int ) ;
 int zfs_obj_to_path_impl (int *,int ,int *,int *,char*,int) ;
 int zfs_obj_to_stats_impl (int *,int *,int *) ;
 int zfs_release_sa_handle (int *,int *,int ) ;
 int zfs_sa_setup (int *,int **) ;

int
zfs_obj_to_stats(objset_t *osp, uint64_t obj, zfs_stat_t *sb,
    char *buf, int len)
{
 char *path = buf + len - 1;
 sa_attr_type_t *sa_table;
 sa_handle_t *hdl;
 dmu_buf_t *db;
 int error;

 *path = '\0';

 error = zfs_sa_setup(osp, &sa_table);
 if (error != 0)
  return (error);

 error = zfs_grab_sa_handle(osp, obj, &hdl, &db, FTAG);
 if (error != 0)
  return (error);

 error = zfs_obj_to_stats_impl(hdl, sa_table, sb);
 if (error != 0) {
  zfs_release_sa_handle(hdl, db, FTAG);
  return (error);
 }

 error = zfs_obj_to_path_impl(osp, obj, hdl, sa_table, buf, len);

 zfs_release_sa_handle(hdl, db, FTAG);
 return (error);
}
