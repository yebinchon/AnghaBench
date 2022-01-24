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
typedef  int u8 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_str ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_12__ {double iRowid; TYPE_1__* aCoord; } ;
struct TYPE_11__ {int nDim; int nDim2; int nBytesPerCell; int* zData; } ;
struct TYPE_10__ {double i; scalar_t__ f; } ;
typedef  TYPE_2__ RtreeNode ;
typedef  TYPE_3__ RtreeCell ;
typedef  TYPE_2__ Rtree ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*,int,TYPE_3__*) ; 
 int /*<<< orphan*/  sqlite3_free ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,double) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(sqlite3_context *ctx, int nArg, sqlite3_value **apArg){
  RtreeNode node;
  Rtree tree;
  int ii;
  int nData;
  int errCode;
  sqlite3_str *pOut;

  FUNC1(nArg);
  FUNC2(&node, 0, sizeof(RtreeNode));
  FUNC2(&tree, 0, sizeof(Rtree));
  tree.nDim = (u8)FUNC13(apArg[0]);
  if( tree.nDim<1 || tree.nDim>5 ) return;
  tree.nDim2 = tree.nDim*2;
  tree.nBytesPerCell = 8 + 8 * tree.nDim;
  node.zData = (u8 *)FUNC11(apArg[1]);
  nData = FUNC12(apArg[1]);
  if( nData<4 ) return;
  if( nData<FUNC0(&node)*tree.nBytesPerCell ) return;

  pOut = FUNC10(0);
  for(ii=0; ii<FUNC0(&node); ii++){
    RtreeCell cell;
    int jj;

    FUNC3(&tree, &node, ii, &cell);
    if( ii>0 ) FUNC6(pOut, " ", 1);
    FUNC7(pOut, "{%lld", cell.iRowid);
    for(jj=0; jj<tree.nDim2; jj++){
#ifndef SQLITE_RTREE_INT_ONLY
      FUNC7(pOut, " %g", (double)cell.aCoord[jj].f);
#else
      sqlite3_str_appendf(pOut, " %d", cell.aCoord[jj].i);
#endif
    }
    FUNC6(pOut, "}", 1);
  }
  errCode = FUNC8(pOut);
  FUNC5(ctx, FUNC9(pOut), -1, sqlite3_free);
  FUNC4(ctx, errCode);
}