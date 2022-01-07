
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;


 int EINVAL ;
 int EOVERFLOW ;
 int zap_lookup_norm (int *,int ,char const*,int ,int ,int *,int ,int *,int ,int *) ;

int
zap_contains(objset_t *os, uint64_t zapobj, const char *name)
{
 int err = zap_lookup_norm(os, zapobj, name, 0,
     0, ((void*)0), 0, ((void*)0), 0, ((void*)0));
 if (err == EOVERFLOW || err == EINVAL)
  err = 0;
 return (err);
}
