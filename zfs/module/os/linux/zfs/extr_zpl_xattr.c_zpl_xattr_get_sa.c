
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * z_xattr_cached; int z_lock; int z_xattr_lock; } ;
typedef TYPE_1__ znode_t ;
typedef int uint_t ;
typedef int uchar_t ;
struct inode {int dummy; } ;


 int ASSERT (int *) ;
 int ERANGE ;
 TYPE_1__* ITOZ (struct inode*) ;
 int * RW_LOCK_HELD (int *) ;
 int memcpy (void*,int *,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int nvlist_lookup_byte_array (int *,char const*,int **,int*) ;
 int zfs_sa_get_xattr (TYPE_1__*) ;

__attribute__((used)) static int
zpl_xattr_get_sa(struct inode *ip, const char *name, void *value, size_t size)
{
 znode_t *zp = ITOZ(ip);
 uchar_t *nv_value;
 uint_t nv_size;
 int error = 0;

 ASSERT(RW_LOCK_HELD(&zp->z_xattr_lock));

 mutex_enter(&zp->z_lock);
 if (zp->z_xattr_cached == ((void*)0))
  error = -zfs_sa_get_xattr(zp);
 mutex_exit(&zp->z_lock);

 if (error)
  return (error);

 ASSERT(zp->z_xattr_cached);
 error = -nvlist_lookup_byte_array(zp->z_xattr_cached, name,
     &nv_value, &nv_size);
 if (error)
  return (error);

 if (size == 0 || value == ((void*)0))
  return (nv_size);

 if (size < nv_size)
  return (-ERANGE);

 memcpy(value, nv_value, nv_size);

 return (nv_size);
}
