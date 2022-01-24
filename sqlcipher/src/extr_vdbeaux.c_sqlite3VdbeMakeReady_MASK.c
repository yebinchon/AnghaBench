#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ynVar ;
typedef  scalar_t__ u8 ;
struct ReusableSpace {size_t nFree; int nNeeded; scalar_t__* pSpace; } ;
struct TYPE_10__ {scalar_t__ mallocFailed; } ;
typedef  TYPE_1__ sqlite3 ;
typedef  int /*<<< orphan*/  i64 ;
typedef  int /*<<< orphan*/  VdbeCursor ;
struct TYPE_11__ {int nOp; scalar_t__ magic; int nCursor; int nMem; void* anExec; void* apCsr; void* aMem; void* aVar; scalar_t__ nVar; scalar_t__ explain; scalar_t__ pVList; void* apArg; scalar_t__* pFree; scalar_t__ expired; scalar_t__ usesStmtJournal; scalar_t__ aOp; TYPE_1__* db; TYPE_3__* pParse; } ;
typedef  TYPE_2__ Vdbe ;
struct TYPE_12__ {int nVar; int nMem; int nTab; int nMaxArg; scalar_t__ explain; scalar_t__ pVList; scalar_t__ mayAbort; scalar_t__ isMultiWrite; scalar_t__ szOpAlloc; } ;
typedef  TYPE_3__ Parse ;
typedef  int /*<<< orphan*/  Op ;
typedef  int /*<<< orphan*/  Mem ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  MEM_Null ; 
 int /*<<< orphan*/  MEM_Undefined ; 
 int FUNC1 (int) ; 
 size_t FUNC2 (scalar_t__) ; 
 scalar_t__ VDBE_MAGIC_INIT ; 
 void* FUNC3 (struct ReusableSpace*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int*) ; 
 scalar_t__* FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

void FUNC10(
  Vdbe *p,                       /* The VDBE */
  Parse *pParse                  /* Parsing context */
){
  sqlite3 *db;                   /* The database connection */
  int nVar;                      /* Number of parameters */
  int nMem;                      /* Number of VM memory registers */
  int nCursor;                   /* Number of cursors required */
  int nArg;                      /* Number of arguments in subprograms */
  int n;                         /* Loop counter */
  struct ReusableSpace x;        /* Reusable bulk memory */

  FUNC4( p!=0 );
  FUNC4( p->nOp>0 );
  FUNC4( pParse!=0 );
  FUNC4( p->magic==VDBE_MAGIC_INIT );
  FUNC4( pParse==p->pParse );
  db = p->db;
  FUNC4( db->mallocFailed==0 );
  nVar = pParse->nVar;
  nMem = pParse->nMem;
  nCursor = pParse->nTab;
  nArg = pParse->nMaxArg;
  
  /* Each cursor uses a memory cell.  The first cursor (cursor 0) can
  ** use aMem[0] which is not otherwise used by the VDBE program.  Allocate
  ** space at the end of aMem[] for cursors 1 and greater.
  ** See also: allocateCursor().
  */
  nMem += nCursor;
  if( nCursor==0 && nMem>0 ) nMem++;  /* Space for aMem[0] even if not used */

  /* Figure out how much reusable memory is available at the end of the
  ** opcode array.  This extra memory will be reallocated for other elements
  ** of the prepared statement.
  */
  n = FUNC1(sizeof(Op)*p->nOp);              /* Bytes of opcode memory used */
  x.pSpace = &((u8*)p->aOp)[n];               /* Unused opcode memory */
  FUNC4( FUNC0(x.pSpace) );
  x.nFree = FUNC2(pParse->szOpAlloc - n);  /* Bytes of unused memory */
  FUNC4( x.nFree>=0 );
  FUNC4( FUNC0(&x.pSpace[x.nFree]) );

  FUNC7(p, &nArg);
  p->usesStmtJournal = (u8)(pParse->isMultiWrite && pParse->mayAbort);
  if( pParse->explain && nMem<10 ){
    nMem = 10;
  }
  p->expired = 0;

  /* Memory for registers, parameters, cursor, etc, is allocated in one or two
  ** passes.  On the first pass, we try to reuse unused memory at the 
  ** end of the opcode array.  If we are unable to satisfy all memory
  ** requirements by reusing the opcode array tail, then the second
  ** pass will fill in the remainder using a fresh memory allocation.  
  **
  ** This two-pass approach that reuses as much memory as possible from
  ** the leftover memory at the end of the opcode array.  This can significantly
  ** reduce the amount of memory held by a prepared statement.
  */
  x.nNeeded = 0;
  p->aMem = FUNC3(&x, 0, nMem*sizeof(Mem));
  p->aVar = FUNC3(&x, 0, nVar*sizeof(Mem));
  p->apArg = FUNC3(&x, 0, nArg*sizeof(Mem*));
  p->apCsr = FUNC3(&x, 0, nCursor*sizeof(VdbeCursor*));
#ifdef SQLITE_ENABLE_STMT_SCANSTATUS
  p->anExec = allocSpace(&x, 0, p->nOp*sizeof(i64));
#endif
  if( x.nNeeded ){
    x.pSpace = p->pFree = FUNC8(db, x.nNeeded);
    x.nFree = x.nNeeded;
    if( !db->mallocFailed ){
      p->aMem = FUNC3(&x, p->aMem, nMem*sizeof(Mem));
      p->aVar = FUNC3(&x, p->aVar, nVar*sizeof(Mem));
      p->apArg = FUNC3(&x, p->apArg, nArg*sizeof(Mem*));
      p->apCsr = FUNC3(&x, p->apCsr, nCursor*sizeof(VdbeCursor*));
#ifdef SQLITE_ENABLE_STMT_SCANSTATUS
      p->anExec = allocSpace(&x, p->anExec, p->nOp*sizeof(i64));
#endif
    }
  }

  p->pVList = pParse->pVList;
  pParse->pVList =  0;
  p->explain = pParse->explain;
  if( db->mallocFailed ){
    p->nVar = 0;
    p->nCursor = 0;
    p->nMem = 0;
  }else{
    p->nCursor = nCursor;
    p->nVar = (ynVar)nVar;
    FUNC5(p->aVar, nVar, db, MEM_Null);
    p->nMem = nMem;
    FUNC5(p->aMem, nMem, db, MEM_Undefined);
    FUNC6(p->apCsr, 0, nCursor*sizeof(VdbeCursor*));
#ifdef SQLITE_ENABLE_STMT_SCANSTATUS
    memset(p->anExec, 0, p->nOp*sizeof(i64));
#endif
  }
  FUNC9(p);
}