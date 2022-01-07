
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ szMalloc; } ;
typedef TYPE_1__ Mem ;


 scalar_t__ VdbeMemDynamic (TYPE_1__*) ;
 int assert (int ) ;
 int sqlite3VdbeCheckMemInvariants (TYPE_1__*) ;
 int vdbeMemClear (TYPE_1__*) ;

void sqlite3VdbeMemRelease(Mem *p){
  assert( sqlite3VdbeCheckMemInvariants(p) );
  if( VdbeMemDynamic(p) || p->szMalloc ){
    vdbeMemClear(p);
  }
}
