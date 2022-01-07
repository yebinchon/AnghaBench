
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;
typedef int dmu_object_type_t ;


 int DMU_OT_NONE ;
 int VERIFY (int) ;
 int VERIFY0 (int ) ;
 int zap_add (int *,scalar_t__,char const*,int,int,scalar_t__*,int *) ;
 scalar_t__ zap_create_dnsize (int *,int ,int ,int ,int,int *) ;

uint64_t
zap_create_link_dnsize(objset_t *os, dmu_object_type_t ot, uint64_t parent_obj,
    const char *name, int dnodesize, dmu_tx_t *tx)
{
 uint64_t new_obj;

 new_obj = zap_create_dnsize(os, ot, DMU_OT_NONE, 0, dnodesize, tx);
 VERIFY(new_obj != 0);
 VERIFY0(zap_add(os, parent_obj, name, sizeof (uint64_t), 1, &new_obj,
     tx));

 return (new_obj);
}
