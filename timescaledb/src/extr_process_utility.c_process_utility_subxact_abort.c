
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SubXactEvent ;
typedef int SubTransactionId ;



 int expect_chunk_modification ;

__attribute__((used)) static void
process_utility_subxact_abort(SubXactEvent event, SubTransactionId mySubid,
         SubTransactionId parentSubid, void *arg)
{
 switch (event)
 {
  case 128:

   expect_chunk_modification = 0;
  default:
   break;
 }
}
