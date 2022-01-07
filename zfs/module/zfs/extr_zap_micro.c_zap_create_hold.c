
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zap_flags_t ;
typedef int uint64_t ;
typedef int objset_t ;
typedef int dnode_t ;
typedef int dmu_tx_t ;
typedef int dmu_object_type_t ;


 int zap_create_impl (int *,int,int ,int ,int,int,int ,int,int,int **,void*,int *) ;

uint64_t
zap_create_hold(objset_t *os, int normflags, zap_flags_t flags,
    dmu_object_type_t ot, int leaf_blockshift, int indirect_blockshift,
    dmu_object_type_t bonustype, int bonuslen, int dnodesize,
    dnode_t **allocated_dnode, void *tag, dmu_tx_t *tx)
{
 return (zap_create_impl(os, normflags, flags, ot, leaf_blockshift,
     indirect_blockshift, bonustype, bonuslen, dnodesize,
     allocated_dnode, tag, tx));
}
