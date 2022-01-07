
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_7__ {int spa_meta_objset; } ;
typedef TYPE_1__ spa_t ;
typedef int nvlist_t ;
typedef int dmu_tx_t ;
struct TYPE_8__ {scalar_t__ db_data; } ;
typedef TYPE_2__ dmu_buf_t ;


 int FTAG ;
 int KM_SLEEP ;
 int NV_ENCODE_XDR ;
 size_t P2ROUNDUP (size_t,int ) ;
 int SPA_CONFIG_BLOCKSIZE ;
 int VERIFY (int) ;
 int bzero (char*,size_t) ;
 scalar_t__ dmu_bonus_hold (int ,size_t,int ,TYPE_2__**) ;
 int dmu_buf_rele (TYPE_2__*,int ) ;
 int dmu_buf_will_dirty (TYPE_2__*,int *) ;
 int dmu_write (int ,size_t,int ,size_t,char*,int *) ;
 scalar_t__ nvlist_pack (int *,char**,size_t*,int ,int ) ;
 scalar_t__ nvlist_size (int *,size_t*,int ) ;
 char* vmem_alloc (size_t,int ) ;
 int vmem_free (char*,size_t) ;

__attribute__((used)) static void
spa_sync_nvlist(spa_t *spa, uint64_t obj, nvlist_t *nv, dmu_tx_t *tx)
{
 char *packed = ((void*)0);
 size_t bufsize;
 size_t nvsize = 0;
 dmu_buf_t *db;

 VERIFY(nvlist_size(nv, &nvsize, NV_ENCODE_XDR) == 0);






 bufsize = P2ROUNDUP((uint64_t)nvsize, SPA_CONFIG_BLOCKSIZE);
 packed = vmem_alloc(bufsize, KM_SLEEP);

 VERIFY(nvlist_pack(nv, &packed, &nvsize, NV_ENCODE_XDR,
     KM_SLEEP) == 0);
 bzero(packed + nvsize, bufsize - nvsize);

 dmu_write(spa->spa_meta_objset, obj, 0, bufsize, packed, tx);

 vmem_free(packed, bufsize);

 VERIFY(0 == dmu_bonus_hold(spa->spa_meta_objset, obj, FTAG, &db));
 dmu_buf_will_dirty(db, tx);
 *(uint64_t *)db->db_data = nvsize;
 dmu_buf_rele(db, FTAG);
}
