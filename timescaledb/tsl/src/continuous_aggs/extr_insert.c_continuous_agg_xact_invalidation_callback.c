
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XactEvent ;





 int cache_inval_cleanup () ;
 int cache_inval_htab_write () ;
 int continuous_aggs_cache_inval_htab ;

__attribute__((used)) static void
continuous_agg_xact_invalidation_callback(XactEvent event, void *arg)
{

 if (!continuous_aggs_cache_inval_htab)
  return;

 switch (event)
 {
  case 128:
   cache_inval_htab_write();
   cache_inval_cleanup();
   break;
  case 130:
  case 129:
   cache_inval_cleanup();
   break;
  default:
   break;
 }
}
