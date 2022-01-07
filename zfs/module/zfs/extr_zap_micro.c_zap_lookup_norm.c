
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zap_t ;
typedef int uint64_t ;
typedef int objset_t ;
typedef int matchtype_t ;
typedef int boolean_t ;


 int FALSE ;
 int FTAG ;
 int RW_READER ;
 int TRUE ;
 int zap_lockdir (int *,int ,int *,int ,int ,int ,int ,int **) ;
 int zap_lookup_impl (int *,char const*,int ,int ,void*,int ,char*,int,int *) ;
 int zap_unlockdir (int *,int ) ;

int
zap_lookup_norm(objset_t *os, uint64_t zapobj, const char *name,
    uint64_t integer_size, uint64_t num_integers, void *buf,
    matchtype_t mt, char *realname, int rn_len,
    boolean_t *ncp)
{
 zap_t *zap;

 int err =
     zap_lockdir(os, zapobj, ((void*)0), RW_READER, TRUE, FALSE, FTAG, &zap);
 if (err != 0)
  return (err);
 err = zap_lookup_impl(zap, name, integer_size,
     num_integers, buf, mt, realname, rn_len, ncp);
 zap_unlockdir(zap, FTAG);
 return (err);
}
