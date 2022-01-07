
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;


 int ENOENT ;
 int EPERM ;
 int SET_ERROR (int ) ;
 int ZFS_MAX_DELEG_NAME ;
 int zap_lookup (int *,int ,char const*,int,int,int *) ;
 int zfs_deleg_whokey (char*,char,char,void*) ;

__attribute__((used)) static int
dsl_check_access(objset_t *mos, uint64_t zapobj,
    char type, char checkflag, void *valp, const char *perm)
{
 int error;
 uint64_t jumpobj, zero;
 char whokey[ZFS_MAX_DELEG_NAME];

 zfs_deleg_whokey(whokey, type, checkflag, valp);
 error = zap_lookup(mos, zapobj, whokey, 8, 1, &jumpobj);
 if (error == 0) {
  error = zap_lookup(mos, jumpobj, perm, 8, 1, &zero);
  if (error == ENOENT)
   error = SET_ERROR(EPERM);
 }
 return (error);
}
