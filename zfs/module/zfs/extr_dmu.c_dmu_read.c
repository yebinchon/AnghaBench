
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int objset_t ;
typedef int dnode_t ;


 int FTAG ;
 int dmu_read_impl (int *,int ,int ,void*,int ) ;
 int dnode_hold (int *,int ,int ,int **) ;
 int dnode_rele (int *,int ) ;

int
dmu_read(objset_t *os, uint64_t object, uint64_t offset, uint64_t size,
    void *buf, uint32_t flags)
{
 dnode_t *dn;
 int err;

 err = dnode_hold(os, object, FTAG, &dn);
 if (err != 0)
  return (err);

 err = dmu_read_impl(dn, offset, size, buf, flags);
 dnode_rele(dn, FTAG);
 return (err);
}
