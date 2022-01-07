
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* xSize ) (void*) ;} ;
struct TYPE_4__ {TYPE_1__ mem; } ;


 int stub1 (void*) ;
 TYPE_2__ wrapped ;

__attribute__((used)) static int wrMemSize(void *p) {return wrapped.mem.xSize(p);}
