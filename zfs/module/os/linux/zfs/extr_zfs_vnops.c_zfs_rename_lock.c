
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ z_id; int z_parent_lock; int z_sa_hdl; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_15__ {TYPE_1__* zl_znode; struct TYPE_15__* zl_next; int * zl_rwlock; } ;
typedef TYPE_2__ zfs_zlock_t ;
typedef scalar_t__ uint64_t ;
typedef int oidp ;
typedef int krwlock_t ;
typedef scalar_t__ krw_t ;
struct TYPE_16__ {scalar_t__ z_root; } ;


 int EINVAL ;
 int KM_SLEEP ;
 scalar_t__ RW_READER ;
 scalar_t__ RW_WRITER ;
 int SA_ZPL_PARENT (TYPE_3__*) ;
 int SET_ERROR (int ) ;
 TYPE_3__* ZTOZSB (TYPE_1__*) ;
 TYPE_2__* kmem_alloc (int,int ) ;
 int rw_enter (int *,scalar_t__) ;
 int rw_tryenter (int *,scalar_t__) ;
 int sa_lookup (int ,int ,scalar_t__*,int) ;
 int zfs_rename_unlock (TYPE_2__**) ;
 int zfs_zget (TYPE_3__*,scalar_t__,TYPE_1__**) ;

__attribute__((used)) static int
zfs_rename_lock(znode_t *szp, znode_t *tdzp, znode_t *sdzp, zfs_zlock_t **zlpp)
{
 zfs_zlock_t *zl;
 znode_t *zp = tdzp;
 uint64_t rootid = ZTOZSB(zp)->z_root;
 uint64_t oidp = zp->z_id;
 krwlock_t *rwlp = &szp->z_parent_lock;
 krw_t rw = RW_WRITER;





 do {
  if (!rw_tryenter(rwlp, rw)) {





   if (rw == RW_READER && zp->z_id > szp->z_id) {



    zfs_rename_unlock(&zl);
    *zlpp = ((void*)0);
    zp = tdzp;
    oidp = zp->z_id;
    rwlp = &szp->z_parent_lock;
    rw = RW_WRITER;
    continue;
   } else {



    rw_enter(rwlp, rw);
   }
  }

  zl = kmem_alloc(sizeof (*zl), KM_SLEEP);
  zl->zl_rwlock = rwlp;
  zl->zl_znode = ((void*)0);
  zl->zl_next = *zlpp;
  *zlpp = zl;

  if (oidp == szp->z_id)
   return (SET_ERROR(EINVAL));

  if (oidp == rootid)
   return (0);

  if (rw == RW_READER) {
   int error = zfs_zget(ZTOZSB(zp), oidp, &zp);
   if (error)
    return (error);
   zl->zl_znode = zp;
  }
  (void) sa_lookup(zp->z_sa_hdl, SA_ZPL_PARENT(ZTOZSB(zp)),
      &oidp, sizeof (oidp));
  rwlp = &zp->z_parent_lock;
  rw = RW_READER;

 } while (zp->z_id != sdzp->z_id);

 return (0);
}
