
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int sa_handle_t ;
typedef int sa_bulk_attr_t ;
typedef int sa_attr_type_t ;
typedef int pflags ;
typedef int parent_mode ;
typedef int parent ;
typedef int objset_t ;
typedef int mode ;
typedef int dmu_buf_t ;


 int EINVAL ;
 int FTAG ;
 int SA_ADD_BULK_ATTR (int *,int,int ,int *,int*,int) ;
 int SET_ERROR (int ) ;
 scalar_t__ S_ISDIR (int) ;
 int ZFS_XATTR ;
 size_t ZPL_FLAGS ;
 size_t ZPL_MODE ;
 size_t ZPL_PARENT ;
 int sa_bulk_lookup (int *,int *,int) ;
 int sa_lookup (int *,size_t,int*,int) ;
 int zfs_grab_sa_handle (int *,int,int **,int **,int ) ;
 int zfs_release_sa_handle (int *,int *,int ) ;

__attribute__((used)) static int
zfs_obj_to_pobj(objset_t *osp, sa_handle_t *hdl, sa_attr_type_t *sa_table,
    uint64_t *pobjp, int *is_xattrdir)
{
 uint64_t parent;
 uint64_t pflags;
 uint64_t mode;
 uint64_t parent_mode;
 sa_bulk_attr_t bulk[3];
 sa_handle_t *sa_hdl;
 dmu_buf_t *sa_db;
 int count = 0;
 int error;

 SA_ADD_BULK_ATTR(bulk, count, sa_table[ZPL_PARENT], ((void*)0),
     &parent, sizeof (parent));
 SA_ADD_BULK_ATTR(bulk, count, sa_table[ZPL_FLAGS], ((void*)0),
     &pflags, sizeof (pflags));
 SA_ADD_BULK_ATTR(bulk, count, sa_table[ZPL_MODE], ((void*)0),
     &mode, sizeof (mode));

 if ((error = sa_bulk_lookup(hdl, bulk, count)) != 0)
  return (error);







 error = zfs_grab_sa_handle(osp, parent, &sa_hdl, &sa_db, FTAG);
 if (error != 0)
  return (error);

 error = sa_lookup(sa_hdl, ZPL_MODE, &parent_mode, sizeof (parent_mode));
 zfs_release_sa_handle(sa_hdl, sa_db, FTAG);
 if (error != 0)
  return (error);

 *is_xattrdir = ((pflags & ZFS_XATTR) != 0) && S_ISDIR(mode);





 if (!*is_xattrdir && !S_ISDIR(parent_mode))
  return (SET_ERROR(EINVAL));

 *pobjp = parent;

 return (0);
}
