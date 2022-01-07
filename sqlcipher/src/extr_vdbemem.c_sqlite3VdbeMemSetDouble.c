
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {double r; } ;
struct TYPE_6__ {int flags; TYPE_1__ u; } ;
typedef TYPE_2__ Mem ;


 int MEM_Real ;
 int sqlite3IsNaN (double) ;
 int sqlite3VdbeMemSetNull (TYPE_2__*) ;

void sqlite3VdbeMemSetDouble(Mem *pMem, double val){
  sqlite3VdbeMemSetNull(pMem);
  if( !sqlite3IsNaN(val) ){
    pMem->u.r = val;
    pMem->flags = MEM_Real;
  }
}
