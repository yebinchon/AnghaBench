
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3_value ;
struct TYPE_7__ {TYPE_6__* db; TYPE_2__* aVar; } ;
typedef TYPE_1__ Vdbe ;
struct TYPE_9__ {int flags; } ;
struct TYPE_8__ {int flags; } ;
typedef TYPE_2__ Mem ;


 int MEM_Null ;
 int SQLITE_EnableQPSG ;
 int SQLITE_UTF8 ;
 int assert (int) ;
 int sqlite3ValueApplyAffinity (int *,int ,int ) ;
 int * sqlite3ValueNew (TYPE_6__*) ;
 int sqlite3VdbeMemCopy (TYPE_2__*,TYPE_2__*) ;

sqlite3_value *sqlite3VdbeGetBoundValue(Vdbe *v, int iVar, u8 aff){
  assert( iVar>0 );
  if( v ){
    Mem *pMem = &v->aVar[iVar-1];
    assert( (v->db->flags & SQLITE_EnableQPSG)==0 );
    if( 0==(pMem->flags & MEM_Null) ){
      sqlite3_value *pRet = sqlite3ValueNew(v->db);
      if( pRet ){
        sqlite3VdbeMemCopy((Mem *)pRet, pMem);
        sqlite3ValueApplyAffinity(pRet, aff, SQLITE_UTF8);
      }
      return pRet;
    }
  }
  return 0;
}
