
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SubXactEvent ;
typedef int SubTransactionId ;



 int cache_invalidate_all () ;

__attribute__((used)) static void
cache_invalidate_subxact_end(SubXactEvent event, SubTransactionId mySubid,
        SubTransactionId parentSubid, void *arg)
{
 switch (event)
 {
  case 128:





   cache_invalidate_all();
  default:
   break;
 }
}
