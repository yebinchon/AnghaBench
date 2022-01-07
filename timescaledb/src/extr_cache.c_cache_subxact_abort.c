
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SubXactEvent ;
typedef int SubTransactionId ;






 int release_subtxn_pinned_caches (int ,int) ;

__attribute__((used)) static void
cache_subxact_abort(SubXactEvent event, SubTransactionId subtxn_id, SubTransactionId parentSubid,
     void *arg)
{
 switch (event)
 {
  case 128:
  case 129:

   break;
  case 130:
   release_subtxn_pinned_caches(subtxn_id, 0);
   break;
  case 131:
   release_subtxn_pinned_caches(subtxn_id, 1);
   break;
 }
}
