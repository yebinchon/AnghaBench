
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32 ;
typedef int ctl ;
struct TYPE_4__ {int keysize; int entrysize; int * hcxt; } ;
typedef TYPE_1__ HASHCTL ;
typedef int ContinuousAggsCacheInvalEntry ;


 int ALLOCSET_DEFAULT_SIZES ;
 int * AllocSetContextCreate (int ,char*,int ) ;
 int Assert (int ) ;
 int CA_CACHE_INVAL_INIT_HTAB_SIZE ;
 int HASH_BLOBS ;
 int HASH_ELEM ;
 int TopTransactionContext ;
 int continuous_aggs_cache_inval_htab ;
 int * continuous_aggs_trigger_mctx ;
 int hash_create (char*,int ,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
cache_inval_init()
{
 HASHCTL ctl;

 Assert(continuous_aggs_trigger_mctx == ((void*)0));

 continuous_aggs_trigger_mctx = AllocSetContextCreate(TopTransactionContext,
               "ConinuousAggsTriggerCtx",
               ALLOCSET_DEFAULT_SIZES);

 memset(&ctl, 0, sizeof(ctl));
 ctl.keysize = sizeof(int32);
 ctl.entrysize = sizeof(ContinuousAggsCacheInvalEntry);
 ctl.hcxt = continuous_aggs_trigger_mctx;

 continuous_aggs_cache_inval_htab = hash_create("TS Continuous Aggs Cache Inval",
               CA_CACHE_INVAL_INIT_HTAB_SIZE,
               &ctl,
               HASH_ELEM | HASH_BLOBS);
}
