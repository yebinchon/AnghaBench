#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ iStructVersion; scalar_t__ rc; TYPE_3__* pStruct; } ;
struct TYPE_13__ {scalar_t__ nSegment; int nLevel; TYPE_1__* aLevel; } ;
struct TYPE_12__ {scalar_t__ iSegid; scalar_t__ pgnoFirst; scalar_t__ pgnoLast; } ;
struct TYPE_11__ {scalar_t__ nMerge; int nSeg; TYPE_2__* aSeg; } ;
typedef  TYPE_2__ Fts5StructureSegment ;
typedef  TYPE_3__ Fts5Structure ;
typedef  TYPE_4__ Fts5Index ;

/* Variables and functions */
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 void* FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static Fts5Structure *FUNC6(Fts5Index *p){

  if( p->pStruct==0 ){
    p->iStructVersion = FUNC2(p);
    if( p->rc==SQLITE_OK ){
      p->pStruct = FUNC3(p);
    }
  }

#if 0
  else{
    Fts5Structure *pTest = fts5StructureReadUncached(p);
    if( pTest ){
      int i, j;
      assert_nc( p->pStruct->nSegment==pTest->nSegment );
      assert_nc( p->pStruct->nLevel==pTest->nLevel );
      for(i=0; i<pTest->nLevel; i++){
        assert_nc( p->pStruct->aLevel[i].nMerge==pTest->aLevel[i].nMerge );
        assert_nc( p->pStruct->aLevel[i].nSeg==pTest->aLevel[i].nSeg );
        for(j=0; j<pTest->aLevel[i].nSeg; j++){
          Fts5StructureSegment *p1 = &pTest->aLevel[i].aSeg[j];
          Fts5StructureSegment *p2 = &p->pStruct->aLevel[i].aSeg[j];
          assert_nc( p1->iSegid==p2->iSegid );
          assert_nc( p1->pgnoFirst==p2->pgnoFirst );
          assert_nc( p1->pgnoLast==p2->pgnoLast );
        }
      }
      fts5StructureRelease(pTest);
    }
  }
#endif

  if( p->rc!=SQLITE_OK ) return 0;
  FUNC0( p->iStructVersion!=0 );
  FUNC0( p->pStruct!=0 );
  FUNC4(p->pStruct);
  return p->pStruct;
}