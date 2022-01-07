
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ ynVar ;
typedef scalar_t__ u8 ;
struct ReusableSpace {size_t nFree; int nNeeded; scalar_t__* pSpace; } ;
struct TYPE_10__ {scalar_t__ mallocFailed; } ;
typedef TYPE_1__ sqlite3 ;
typedef int i64 ;
typedef int VdbeCursor ;
struct TYPE_11__ {int nOp; scalar_t__ magic; int nCursor; int nMem; void* anExec; void* apCsr; void* aMem; void* aVar; scalar_t__ nVar; scalar_t__ explain; scalar_t__ pVList; void* apArg; scalar_t__* pFree; scalar_t__ expired; scalar_t__ usesStmtJournal; scalar_t__ aOp; TYPE_1__* db; TYPE_3__* pParse; } ;
typedef TYPE_2__ Vdbe ;
struct TYPE_12__ {int nVar; int nMem; int nTab; int nMaxArg; scalar_t__ explain; scalar_t__ pVList; scalar_t__ mayAbort; scalar_t__ isMultiWrite; scalar_t__ szOpAlloc; } ;
typedef TYPE_3__ Parse ;
typedef int Op ;
typedef int Mem ;


 int EIGHT_BYTE_ALIGNMENT (scalar_t__*) ;
 int MEM_Null ;
 int MEM_Undefined ;
 int ROUND8 (int) ;
 size_t ROUNDDOWN8 (scalar_t__) ;
 scalar_t__ VDBE_MAGIC_INIT ;
 void* allocSpace (struct ReusableSpace*,void*,int) ;
 int assert (int) ;
 int initMemArray (void*,int,TYPE_1__*,int ) ;
 int memset (void*,int ,int) ;
 int resolveP2Values (TYPE_2__*,int*) ;
 scalar_t__* sqlite3DbMallocRawNN (TYPE_1__*,int) ;
 int sqlite3VdbeRewind (TYPE_2__*) ;

void sqlite3VdbeMakeReady(
  Vdbe *p,
  Parse *pParse
){
  sqlite3 *db;
  int nVar;
  int nMem;
  int nCursor;
  int nArg;
  int n;
  struct ReusableSpace x;

  assert( p!=0 );
  assert( p->nOp>0 );
  assert( pParse!=0 );
  assert( p->magic==VDBE_MAGIC_INIT );
  assert( pParse==p->pParse );
  db = p->db;
  assert( db->mallocFailed==0 );
  nVar = pParse->nVar;
  nMem = pParse->nMem;
  nCursor = pParse->nTab;
  nArg = pParse->nMaxArg;






  nMem += nCursor;
  if( nCursor==0 && nMem>0 ) nMem++;





  n = ROUND8(sizeof(Op)*p->nOp);
  x.pSpace = &((u8*)p->aOp)[n];
  assert( EIGHT_BYTE_ALIGNMENT(x.pSpace) );
  x.nFree = ROUNDDOWN8(pParse->szOpAlloc - n);
  assert( x.nFree>=0 );
  assert( EIGHT_BYTE_ALIGNMENT(&x.pSpace[x.nFree]) );

  resolveP2Values(p, &nArg);
  p->usesStmtJournal = (u8)(pParse->isMultiWrite && pParse->mayAbort);
  if( pParse->explain && nMem<10 ){
    nMem = 10;
  }
  p->expired = 0;
  x.nNeeded = 0;
  p->aMem = allocSpace(&x, 0, nMem*sizeof(Mem));
  p->aVar = allocSpace(&x, 0, nVar*sizeof(Mem));
  p->apArg = allocSpace(&x, 0, nArg*sizeof(Mem*));
  p->apCsr = allocSpace(&x, 0, nCursor*sizeof(VdbeCursor*));



  if( x.nNeeded ){
    x.pSpace = p->pFree = sqlite3DbMallocRawNN(db, x.nNeeded);
    x.nFree = x.nNeeded;
    if( !db->mallocFailed ){
      p->aMem = allocSpace(&x, p->aMem, nMem*sizeof(Mem));
      p->aVar = allocSpace(&x, p->aVar, nVar*sizeof(Mem));
      p->apArg = allocSpace(&x, p->apArg, nArg*sizeof(Mem*));
      p->apCsr = allocSpace(&x, p->apCsr, nCursor*sizeof(VdbeCursor*));



    }
  }

  p->pVList = pParse->pVList;
  pParse->pVList = 0;
  p->explain = pParse->explain;
  if( db->mallocFailed ){
    p->nVar = 0;
    p->nCursor = 0;
    p->nMem = 0;
  }else{
    p->nCursor = nCursor;
    p->nVar = (ynVar)nVar;
    initMemArray(p->aVar, nVar, db, MEM_Null);
    p->nMem = nMem;
    initMemArray(p->aMem, nMem, db, MEM_Undefined);
    memset(p->apCsr, 0, nCursor*sizeof(VdbeCursor*));



  }
  sqlite3VdbeRewind(p);
}
