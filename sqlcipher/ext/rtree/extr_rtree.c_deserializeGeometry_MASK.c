#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_13__ {int /*<<< orphan*/  apSqlParam; int /*<<< orphan*/  aParam; int /*<<< orphan*/  nParam; int /*<<< orphan*/  pContext; } ;
typedef  TYPE_3__ sqlite3_rtree_query_info ;
struct TYPE_11__ {int /*<<< orphan*/  xQueryFunc; scalar_t__ xGeom; } ;
struct TYPE_15__ {TYPE_3__* pInfo; TYPE_1__ u; int /*<<< orphan*/  op; } ;
struct TYPE_12__ {int /*<<< orphan*/  xQueryFunc; scalar_t__ xGeom; int /*<<< orphan*/  pContext; } ;
struct TYPE_14__ {TYPE_2__ cb; int /*<<< orphan*/  apSqlParam; int /*<<< orphan*/  aParam; int /*<<< orphan*/  nParam; scalar_t__ iSize; } ;
typedef  TYPE_4__ RtreeMatchArg ;
typedef  TYPE_5__ RtreeConstraint ;

/* Variables and functions */
 int /*<<< orphan*/  RTREE_QUERY ; 
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC4(sqlite3_value *pValue, RtreeConstraint *pCons){
  RtreeMatchArg *pBlob, *pSrc;       /* BLOB returned by geometry function */
  sqlite3_rtree_query_info *pInfo;   /* Callback information */

  pSrc = FUNC3(pValue, "RtreeMatchArg");
  if( pSrc==0 ) return SQLITE_ERROR;
  pInfo = (sqlite3_rtree_query_info*)
                FUNC2( sizeof(*pInfo)+pSrc->iSize );
  if( !pInfo ) return SQLITE_NOMEM;
  FUNC1(pInfo, 0, sizeof(*pInfo));
  pBlob = (RtreeMatchArg*)&pInfo[1];
  FUNC0(pBlob, pSrc, pSrc->iSize);
  pInfo->pContext = pBlob->cb.pContext;
  pInfo->nParam = pBlob->nParam;
  pInfo->aParam = pBlob->aParam;
  pInfo->apSqlParam = pBlob->apSqlParam;

  if( pBlob->cb.xGeom ){
    pCons->u.xGeom = pBlob->cb.xGeom;
  }else{
    pCons->op = RTREE_QUERY;
    pCons->u.xQueryFunc = pBlob->cb.xQueryFunc;
  }
  pCons->pInfo = pInfo;
  return SQLITE_OK;
}