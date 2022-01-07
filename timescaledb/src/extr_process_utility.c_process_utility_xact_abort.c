
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XactEvent ;




 int expect_chunk_modification ;

__attribute__((used)) static void
process_utility_xact_abort(XactEvent event, void *arg)
{
 switch (event)
 {
  case 129:
  case 128:







   expect_chunk_modification = 0;
  default:
   break;
 }
}
