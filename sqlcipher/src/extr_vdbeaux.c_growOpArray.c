
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3_int64 ;
typedef int VdbeOp ;
struct TYPE_7__ {int nOpAlloc; int * aOp; TYPE_2__* pParse; } ;
typedef TYPE_1__ Vdbe ;
struct TYPE_9__ {int* aLimit; } ;
struct TYPE_8__ {int szOpAlloc; TYPE_3__* db; } ;
typedef TYPE_2__ Parse ;
typedef int Op ;


 size_t SQLITE_LIMIT_VDBE_OP ;
 int SQLITE_NOMEM ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int UNUSED_PARAMETER (int) ;
 int assert (int) ;
 int sqlite3DbMallocSize (TYPE_3__*,int *) ;
 int * sqlite3DbRealloc (TYPE_3__*,int *,int) ;
 int sqlite3OomFault (TYPE_3__*) ;

__attribute__((used)) static int growOpArray(Vdbe *v, int nOp){
  VdbeOp *pNew;
  Parse *p = v->pParse;
  sqlite3_int64 nNew = (v->nOpAlloc ? 2*(sqlite3_int64)v->nOpAlloc
                        : (sqlite3_int64)(1024/sizeof(Op)));
  UNUSED_PARAMETER(nOp);



  if( nNew > p->db->aLimit[SQLITE_LIMIT_VDBE_OP] ){
    sqlite3OomFault(p->db);
    return SQLITE_NOMEM;
  }

  assert( nOp<=(1024/sizeof(Op)) );
  assert( nNew>=(v->nOpAlloc+nOp) );
  pNew = sqlite3DbRealloc(p->db, v->aOp, nNew*sizeof(Op));
  if( pNew ){
    p->szOpAlloc = sqlite3DbMallocSize(p->db, pNew);
    v->nOpAlloc = p->szOpAlloc/sizeof(Op);
    v->aOp = pNew;
  }
  return (pNew ? SQLITE_OK : SQLITE_NOMEM_BKPT);
}
