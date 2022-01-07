
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_6__ {int i; } ;
struct TYPE_7__ {int flags; TYPE_1__ u; } ;
typedef TYPE_2__ Mem ;


 int MEM_Int ;
 scalar_t__ VdbeMemDynamic (TYPE_2__*) ;
 int vdbeReleaseAndSetInt64 (TYPE_2__*,int ) ;

void sqlite3VdbeMemSetInt64(Mem *pMem, i64 val){
  if( VdbeMemDynamic(pMem) ){
    vdbeReleaseAndSetInt64(pMem, val);
  }else{
    pMem->u.i = val;
    pMem->flags = MEM_Int;
  }
}
