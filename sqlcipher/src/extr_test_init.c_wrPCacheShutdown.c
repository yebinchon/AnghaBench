
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pArg; int (* xShutdown ) (int ) ;} ;
struct TYPE_4__ {scalar_t__ pcache_init; TYPE_1__ pcache; } ;


 int stub1 (int ) ;
 TYPE_2__ wrapped ;

__attribute__((used)) static void wrPCacheShutdown(void *pArg){
  wrapped.pcache.xShutdown(wrapped.pcache.pArg);
  wrapped.pcache_init = 0;
}
