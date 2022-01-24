#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int i64 ;
struct TYPE_21__ {int n; int /*<<< orphan*/  p; } ;
struct TYPE_20__ {scalar_t__ rc; TYPE_1__* pConfig; } ;
struct TYPE_19__ {int nSegment; int nLevel; TYPE_3__* aLevel; scalar_t__ nWriteCounter; } ;
struct TYPE_18__ {int nMerge; int nSeg; TYPE_2__* aSeg; } ;
struct TYPE_17__ {int iSegid; int pgnoFirst; int pgnoLast; } ;
struct TYPE_16__ {int iCookie; } ;
typedef  TYPE_3__ Fts5StructureLevel ;
typedef  TYPE_4__ Fts5Structure ;
typedef  TYPE_5__ Fts5Index ;
typedef  TYPE_6__ Fts5Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FTS5_STRUCTURE_ROWID ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (scalar_t__*,TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(Fts5Index *p, Fts5Structure *pStruct){
  if( p->rc==SQLITE_OK ){
    Fts5Buffer buf;               /* Buffer to serialize record into */
    int iLvl;                     /* Used to iterate through levels */
    int iCookie;                  /* Cookie value to store */

    FUNC0( pStruct->nSegment==FUNC5(pStruct) );
    FUNC6(&buf, 0, sizeof(Fts5Buffer));

    /* Append the current configuration cookie */
    iCookie = p->pConfig->iCookie;
    if( iCookie<0 ) iCookie = 0;

    if( 0==FUNC7(&p->rc, &buf, 4+9+9+9) ){
      FUNC8(buf.p, iCookie);
      buf.n = 4;
      FUNC3(&buf, pStruct->nLevel);
      FUNC3(&buf, pStruct->nSegment);
      FUNC3(&buf, (i64)pStruct->nWriteCounter);
    }

    for(iLvl=0; iLvl<pStruct->nLevel; iLvl++){
      int iSeg;                     /* Used to iterate through segments */
      Fts5StructureLevel *pLvl = &pStruct->aLevel[iLvl];
      FUNC1(&p->rc, &buf, pLvl->nMerge);
      FUNC1(&p->rc, &buf, pLvl->nSeg);
      FUNC0( pLvl->nMerge<=pLvl->nSeg );

      for(iSeg=0; iSeg<pLvl->nSeg; iSeg++){
        FUNC1(&p->rc, &buf, pLvl->aSeg[iSeg].iSegid);
        FUNC1(&p->rc, &buf, pLvl->aSeg[iSeg].pgnoFirst);
        FUNC1(&p->rc, &buf, pLvl->aSeg[iSeg].pgnoLast);
      }
    }

    FUNC4(p, FTS5_STRUCTURE_ROWID, buf.p, buf.n);
    FUNC2(&buf);
  }
}