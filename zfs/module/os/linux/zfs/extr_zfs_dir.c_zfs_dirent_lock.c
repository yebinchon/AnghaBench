
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int zoid ;
struct TYPE_16__ {int z_sa_hdl; int z_lock; TYPE_3__* z_dirlocks; int z_name_lock; scalar_t__ z_unlinked; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_17__ {int z_norm; scalar_t__ z_case; } ;
typedef TYPE_2__ zfsvfs_t ;
struct TYPE_18__ {char* dl_name; int dl_sharecnt; int dl_namelock; int dl_namesize; int dl_cv; struct TYPE_18__* dl_next; TYPE_1__* dl_dzp; } ;
typedef TYPE_3__ zfs_dirlock_t ;
typedef scalar_t__ uint64_t ;
typedef int pathname_t ;
typedef int matchtype_t ;
typedef int boolean_t ;


 int ASSERT (int) ;
 int CV_DEFAULT ;
 int EEXIST ;
 int ENOENT ;
 int KM_SLEEP ;
 int MT_MATCH_CASE ;
 int MT_NORMALIZE ;
 int RW_READER ;
 int SA_ZPL_XATTR (TYPE_2__*) ;
 int SET_ERROR (int) ;
 int U8_TEXTPREP_TOUPPER ;
 int U8_UNICODE_LATEST ;
 int ZCIEXACT ;
 int ZCILOOK ;
 int ZEXISTS ;
 scalar_t__ ZFS_CASE_INSENSITIVE ;
 scalar_t__ ZFS_CASE_MIXED ;
 int ZFS_CTLDIR_NAME ;
 int ZHAVELOCK ;
 int ZNEW ;
 int ZRENAMING ;
 int ZSHARED ;
 TYPE_2__* ZTOZSB (TYPE_1__*) ;
 int ZXATTR ;
 int bcopy (char*,char*,int) ;
 int cv_init (int *,int *,int ,int *) ;
 int cv_wait (int *,int *) ;
 void* kmem_alloc (int,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int sa_lookup (int ,int ,scalar_t__*,int) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlen (char*) ;
 scalar_t__ u8_strcmp (char*,char*,int ,int,int ,int*) ;
 int zfs_dirent_unlock (TYPE_3__*) ;
 scalar_t__ zfs_has_ctldir (TYPE_1__*) ;
 int zfs_match_find (TYPE_2__*,TYPE_1__*,char*,int ,int,int*,int *,scalar_t__*) ;
 int zfs_zget (TYPE_2__*,scalar_t__,TYPE_1__**) ;

int
zfs_dirent_lock(zfs_dirlock_t **dlpp, znode_t *dzp, char *name, znode_t **zpp,
    int flag, int *direntflags, pathname_t *realpnp)
{
 zfsvfs_t *zfsvfs = ZTOZSB(dzp);
 zfs_dirlock_t *dl;
 boolean_t update;
 matchtype_t mt = 0;
 uint64_t zoid;
 int error = 0;
 int cmpflags;

 *zpp = ((void*)0);
 *dlpp = ((void*)0);




 if ((name[0] == '.' &&
     (name[1] == '\0' || (name[1] == '.' && name[2] == '\0'))) ||
     (zfs_has_ctldir(dzp) && strcmp(name, ZFS_CTLDIR_NAME) == 0))
  return (SET_ERROR(EEXIST));
 if (zfsvfs->z_norm != 0) {
  mt = MT_NORMALIZE;






  if ((zfsvfs->z_case == ZFS_CASE_INSENSITIVE &&
      (flag & ZCIEXACT)) ||
      (zfsvfs->z_case == ZFS_CASE_MIXED && !(flag & ZCILOOK))) {
   mt |= MT_MATCH_CASE;
  }
 }
 update = !zfsvfs->z_norm ||
     (zfsvfs->z_case == ZFS_CASE_MIXED &&
     !(zfsvfs->z_norm & ~U8_TEXTPREP_TOUPPER) && !(flag & ZCILOOK));
 if (flag & ZRENAMING)
  cmpflags = 0;
 else
  cmpflags = zfsvfs->z_norm;







 ASSERT(!(flag & ZSHARED) || !(flag & ZHAVELOCK));
 if (!(flag & ZHAVELOCK))
  rw_enter(&dzp->z_name_lock, RW_READER);

 mutex_enter(&dzp->z_lock);
 for (;;) {
  if (dzp->z_unlinked && !(flag & ZXATTR)) {
   mutex_exit(&dzp->z_lock);
   if (!(flag & ZHAVELOCK))
    rw_exit(&dzp->z_name_lock);
   return (SET_ERROR(ENOENT));
  }
  for (dl = dzp->z_dirlocks; dl != ((void*)0); dl = dl->dl_next) {
   if ((u8_strcmp(name, dl->dl_name, 0, cmpflags,
       U8_UNICODE_LATEST, &error) == 0) || error != 0)
    break;
  }
  if (error != 0) {
   mutex_exit(&dzp->z_lock);
   if (!(flag & ZHAVELOCK))
    rw_exit(&dzp->z_name_lock);
   return (SET_ERROR(ENOENT));
  }
  if (dl == ((void*)0)) {



   dl = kmem_alloc(sizeof (zfs_dirlock_t), KM_SLEEP);
   cv_init(&dl->dl_cv, ((void*)0), CV_DEFAULT, ((void*)0));
   dl->dl_name = name;
   dl->dl_sharecnt = 0;
   dl->dl_namelock = 0;
   dl->dl_namesize = 0;
   dl->dl_dzp = dzp;
   dl->dl_next = dzp->z_dirlocks;
   dzp->z_dirlocks = dl;
   break;
  }
  if ((flag & ZSHARED) && dl->dl_sharecnt != 0)
   break;
  cv_wait(&dl->dl_cv, &dzp->z_lock);
 }




 if (flag & ZHAVELOCK)
  dl->dl_namelock = 1;

 if ((flag & ZSHARED) && ++dl->dl_sharecnt > 1 && dl->dl_namesize == 0) {
  dl->dl_namesize = strlen(dl->dl_name) + 1;
  name = kmem_alloc(dl->dl_namesize, KM_SLEEP);
  bcopy(dl->dl_name, name, dl->dl_namesize);
  dl->dl_name = name;
 }

 mutex_exit(&dzp->z_lock);






 if (flag & ZXATTR) {
  error = sa_lookup(dzp->z_sa_hdl, SA_ZPL_XATTR(zfsvfs), &zoid,
      sizeof (zoid));
  if (error == 0)
   error = (zoid == 0 ? SET_ERROR(ENOENT) : 0);
 } else {
  error = zfs_match_find(zfsvfs, dzp, name, mt,
      update, direntflags, realpnp, &zoid);
 }
 if (error) {
  if (error != ENOENT || (flag & ZEXISTS)) {
   zfs_dirent_unlock(dl);
   return (error);
  }
 } else {
  if (flag & ZNEW) {
   zfs_dirent_unlock(dl);
   return (SET_ERROR(EEXIST));
  }
  error = zfs_zget(zfsvfs, zoid, zpp);
  if (error) {
   zfs_dirent_unlock(dl);
   return (error);
  }
 }

 *dlpp = dl;

 return (0);
}
