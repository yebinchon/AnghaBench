
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zap_t ;
typedef int zap_name_t ;
typedef int uint64_t ;
typedef int objset_t ;


 int ENOTSUP ;
 int FALSE ;
 int FTAG ;
 int RW_READER ;
 int SET_ERROR (int ) ;
 int TRUE ;
 int fzap_prefetch (int *) ;
 int zap_lockdir (int *,int ,int *,int ,int ,int ,int ,int **) ;
 int * zap_name_alloc (int *,char const*,int ) ;
 int zap_name_free (int *) ;
 int zap_unlockdir (int *,int ) ;

int
zap_prefetch(objset_t *os, uint64_t zapobj, const char *name)
{
 zap_t *zap;
 int err;
 zap_name_t *zn;

 err = zap_lockdir(os, zapobj, ((void*)0), RW_READER, TRUE, FALSE, FTAG, &zap);
 if (err)
  return (err);
 zn = zap_name_alloc(zap, name, 0);
 if (zn == ((void*)0)) {
  zap_unlockdir(zap, FTAG);
  return (SET_ERROR(ENOTSUP));
 }

 fzap_prefetch(zn);
 zap_name_free(zn);
 zap_unlockdir(zap, FTAG);
 return (err);
}
