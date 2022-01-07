
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_13__ {TYPE_1__* sm_phys; int sm_os; int sm_dbuf; } ;
typedef TYPE_3__ space_map_t ;
typedef int maptype_t ;
struct TYPE_14__ {TYPE_2__* tx_pool; } ;
typedef TYPE_4__ dmu_tx_t ;
typedef int dentry ;
struct TYPE_12__ {int dp_spa; } ;
struct TYPE_11__ {int smp_length; } ;


 int SM_DEBUG_ACTION_ENCODE (int ) ;
 int SM_DEBUG_PREFIX ;
 int SM_DEBUG_SYNCPASS_ENCODE (int ) ;
 int SM_DEBUG_TXG_ENCODE (int ) ;
 int SM_PREFIX_ENCODE (int ) ;
 int dmu_buf_will_dirty (int ,TYPE_4__*) ;
 int dmu_tx_get_txg (TYPE_4__*) ;
 int dmu_write (int ,int ,int,int,int*,TYPE_4__*) ;
 int spa_sync_pass (int ) ;
 int space_map_object (TYPE_3__*) ;

__attribute__((used)) static void
space_map_write_intro_debug(space_map_t *sm, maptype_t maptype, dmu_tx_t *tx)
{
 dmu_buf_will_dirty(sm->sm_dbuf, tx);

 uint64_t dentry = SM_PREFIX_ENCODE(SM_DEBUG_PREFIX) |
     SM_DEBUG_ACTION_ENCODE(maptype) |
     SM_DEBUG_SYNCPASS_ENCODE(spa_sync_pass(tx->tx_pool->dp_spa)) |
     SM_DEBUG_TXG_ENCODE(dmu_tx_get_txg(tx));

 dmu_write(sm->sm_os, space_map_object(sm), sm->sm_phys->smp_length,
     sizeof (dentry), &dentry, tx);

 sm->sm_phys->smp_length += sizeof (dentry);
}
