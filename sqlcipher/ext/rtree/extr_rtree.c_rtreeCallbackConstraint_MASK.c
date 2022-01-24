#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_11__ {int nCoord; scalar_t__* aCoord; int iLevel; scalar_t__ rScore; scalar_t__ rParentScore; int eWithin; int eParentWithin; int /*<<< orphan*/  iRowid; } ;
typedef  TYPE_2__ sqlite3_rtree_query_info ;
typedef  int /*<<< orphan*/  sqlite3_rtree_geometry ;
typedef  scalar_t__ sqlite3_rtree_dbl ;
struct TYPE_10__ {int (* xGeom ) (int /*<<< orphan*/ *,int,scalar_t__*,int*) ;int (* xQueryFunc ) (TYPE_2__*) ;} ;
struct TYPE_14__ {scalar_t__ op; TYPE_1__ u; TYPE_2__* pInfo; } ;
struct TYPE_13__ {scalar_t__ f; scalar_t__ i; } ;
struct TYPE_12__ {int iLevel; scalar_t__ rScore; int eWithin; } ;
typedef  TYPE_3__ RtreeSearchPoint ;
typedef  TYPE_4__ RtreeCoord ;
typedef  TYPE_5__ RtreeConstraint ;

/* Variables and functions */
 int NOT_WITHIN ; 
 scalar_t__ RTREE_MATCH ; 
 int RTREE_MAX_DIMENSIONS ; 
 scalar_t__ RTREE_QUERY ; 
 scalar_t__ RTREE_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,scalar_t__*,int*) ; 
 int FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(
  RtreeConstraint *pConstraint,  /* The constraint to test */
  int eInt,                      /* True if RTree holding integer coordinates */
  u8 *pCellData,                 /* Raw cell content */
  RtreeSearchPoint *pSearch,     /* Container of this cell */
  sqlite3_rtree_dbl *prScore,    /* OUT: score for the cell */
  int *peWithin                  /* OUT: visibility of the cell */
){
  sqlite3_rtree_query_info *pInfo = pConstraint->pInfo; /* Callback info */
  int nCoord = pInfo->nCoord;                           /* No. of coordinates */
  int rc;                                             /* Callback return code */
  RtreeCoord c;                                       /* Translator union */
  sqlite3_rtree_dbl aCoord[RTREE_MAX_DIMENSIONS*2];   /* Decoded coordinates */

  FUNC0( pConstraint->op==RTREE_MATCH || pConstraint->op==RTREE_QUERY );
  FUNC0( nCoord==2 || nCoord==4 || nCoord==6 || nCoord==8 || nCoord==10 );

  if( pConstraint->op==RTREE_QUERY && pSearch->iLevel==1 ){
    pInfo->iRowid = FUNC2(pCellData);
  }
  pCellData += 8;
#ifndef SQLITE_RTREE_INT_ONLY
  if( eInt==0 ){
    switch( nCoord ){
      case 10:  FUNC1(pCellData+36, &c); aCoord[9] = c.f;
                FUNC1(pCellData+32, &c); aCoord[8] = c.f;
      case 8:   FUNC1(pCellData+28, &c); aCoord[7] = c.f;
                FUNC1(pCellData+24, &c); aCoord[6] = c.f;
      case 6:   FUNC1(pCellData+20, &c); aCoord[5] = c.f;
                FUNC1(pCellData+16, &c); aCoord[4] = c.f;
      case 4:   FUNC1(pCellData+12, &c); aCoord[3] = c.f;
                FUNC1(pCellData+8,  &c); aCoord[2] = c.f;
      default:  FUNC1(pCellData+4,  &c); aCoord[1] = c.f;
                FUNC1(pCellData,    &c); aCoord[0] = c.f;
    }
  }else
#endif
  {
    switch( nCoord ){
      case 10:  FUNC1(pCellData+36, &c); aCoord[9] = c.i;
                FUNC1(pCellData+32, &c); aCoord[8] = c.i;
      case 8:   FUNC1(pCellData+28, &c); aCoord[7] = c.i;
                FUNC1(pCellData+24, &c); aCoord[6] = c.i;
      case 6:   FUNC1(pCellData+20, &c); aCoord[5] = c.i;
                FUNC1(pCellData+16, &c); aCoord[4] = c.i;
      case 4:   FUNC1(pCellData+12, &c); aCoord[3] = c.i;
                FUNC1(pCellData+8,  &c); aCoord[2] = c.i;
      default:  FUNC1(pCellData+4,  &c); aCoord[1] = c.i;
                FUNC1(pCellData,    &c); aCoord[0] = c.i;
    }
  }
  if( pConstraint->op==RTREE_MATCH ){
    int eWithin = 0;
    rc = pConstraint->u.xGeom((sqlite3_rtree_geometry*)pInfo,
                              nCoord, aCoord, &eWithin);
    if( eWithin==0 ) *peWithin = NOT_WITHIN;
    *prScore = RTREE_ZERO;
  }else{
    pInfo->aCoord = aCoord;
    pInfo->iLevel = pSearch->iLevel - 1;
    pInfo->rScore = pInfo->rParentScore = pSearch->rScore;
    pInfo->eWithin = pInfo->eParentWithin = pSearch->eWithin;
    rc = pConstraint->u.xQueryFunc(pInfo);
    if( pInfo->eWithin<*peWithin ) *peWithin = pInfo->eWithin;
    if( pInfo->rScore<*prScore || *prScore<RTREE_ZERO ){
      *prScore = pInfo->rScore;
    }
  }
  return rc;
}