
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int objset_t ;
struct TYPE_5__ {scalar_t__ dn_maxblkid; } ;
typedef TYPE_1__ dnode_t ;


 scalar_t__ DMU_OBJECT_END ;
 int FTAG ;
 int dmu_free_long_range_impl (int *,TYPE_1__*,scalar_t__,scalar_t__) ;
 int dnode_hold (int *,scalar_t__,int ,TYPE_1__**) ;
 int dnode_rele (TYPE_1__*,int ) ;

int
dmu_free_long_range(objset_t *os, uint64_t object,
    uint64_t offset, uint64_t length)
{
 dnode_t *dn;
 int err;

 err = dnode_hold(os, object, FTAG, &dn);
 if (err != 0)
  return (err);
 err = dmu_free_long_range_impl(os, dn, offset, length);







 if (err == 0 && offset == 0 && length == DMU_OBJECT_END)
  dn->dn_maxblkid = 0;

 dnode_rele(dn, FTAG);
 return (err);
}
