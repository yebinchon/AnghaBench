
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XactEvent ;




 int cache_invalidate_all () ;

__attribute__((used)) static void
cache_invalidate_xact_end(XactEvent event, void *arg)
{
 switch (event)
 {
  case 129:
  case 128:
   cache_invalidate_all();
  default:
   break;
 }
}
