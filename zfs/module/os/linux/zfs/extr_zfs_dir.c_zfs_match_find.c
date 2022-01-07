
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int z_id; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_8__ {scalar_t__ z_norm; int z_os; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef int uint64_t ;
struct TYPE_9__ {char* pn_buf; size_t pn_bufsize; } ;
typedef TYPE_3__ pathname_t ;
typedef int matchtype_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 int ED_CASE_CONFLICT ;
 int EOVERFLOW ;
 int ZFS_DIRENT_OBJ (int ) ;
 int zap_lookup (int ,int ,char*,int,int,int *) ;
 int zap_lookup_norm (int ,int ,char*,int,int,int *,int ,char*,size_t,scalar_t__*) ;

__attribute__((used)) static int
zfs_match_find(zfsvfs_t *zfsvfs, znode_t *dzp, char *name, matchtype_t mt,
    boolean_t update, int *deflags, pathname_t *rpnp, uint64_t *zoid)
{
 boolean_t conflict = B_FALSE;
 int error;

 if (zfsvfs->z_norm) {
  size_t bufsz = 0;
  char *buf = ((void*)0);

  if (rpnp) {
   buf = rpnp->pn_buf;
   bufsz = rpnp->pn_bufsize;
  }





  error = zap_lookup_norm(zfsvfs->z_os, dzp->z_id, name, 8, 1,
      zoid, mt, buf, bufsz, &conflict);
 } else {
  error = zap_lookup(zfsvfs->z_os, dzp->z_id, name, 8, 1, zoid);
 }
 if (error == EOVERFLOW)
  error = 0;

 if (zfsvfs->z_norm && !error && deflags)
  *deflags = conflict ? ED_CASE_CONFLICT : 0;

 *zoid = ZFS_DIRENT_OBJ(*zoid);

 return (error);
}
