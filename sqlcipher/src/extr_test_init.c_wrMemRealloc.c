
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* (* xRealloc ) (void*,int) ;} ;
struct TYPE_4__ {TYPE_1__ mem; } ;


 void* stub1 (void*,int) ;
 TYPE_2__ wrapped ;

__attribute__((used)) static void *wrMemRealloc(void *p, int n) {return wrapped.mem.xRealloc(p, n);}
