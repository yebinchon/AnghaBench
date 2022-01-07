
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pAppData; int (* xShutdown ) (int ) ;} ;
struct TYPE_4__ {scalar_t__ mem_init; TYPE_1__ mem; } ;


 int stub1 (int ) ;
 TYPE_2__ wrapped ;

__attribute__((used)) static void wrMemShutdown(void *pAppData){
  wrapped.mem.xShutdown(wrapped.mem.pAppData);
  wrapped.mem_init = 0;
}
