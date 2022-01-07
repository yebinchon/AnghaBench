
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;
typedef int dmu_object_type_t ;


 int B_FALSE ;
 int DNODE_MIN_SIZE ;
 int dmu_object_reclaim_dnsize (int *,int ,int ,int,int ,int,int ,int ,int *) ;

int
dmu_object_reclaim(objset_t *os, uint64_t object, dmu_object_type_t ot,
    int blocksize, dmu_object_type_t bonustype, int bonuslen, dmu_tx_t *tx)
{
 return (dmu_object_reclaim_dnsize(os, object, ot, blocksize, bonustype,
     bonuslen, DNODE_MIN_SIZE, B_FALSE, tx));
}
