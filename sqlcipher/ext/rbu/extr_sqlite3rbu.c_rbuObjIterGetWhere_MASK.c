#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3rbu ;
struct TYPE_3__ {scalar_t__ eType; int nTblCol; char** azTblCol; scalar_t__* abTblPk; } ;
typedef  TYPE_1__ RbuObjIter ;

/* Variables and functions */
 scalar_t__ RBU_PK_EXTERNAL ; 
 scalar_t__ RBU_PK_NONE ; 
 scalar_t__ RBU_PK_VTAB ; 
 char* FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static char *FUNC1(
  sqlite3rbu *p, 
  RbuObjIter *pIter
){
  char *zList = 0;
  if( pIter->eType==RBU_PK_VTAB || pIter->eType==RBU_PK_NONE ){
    zList = FUNC0(p, "_rowid_ = ?%d", pIter->nTblCol+1);
  }else if( pIter->eType==RBU_PK_EXTERNAL ){
    const char *zSep = "";
    int i;
    for(i=0; i<pIter->nTblCol; i++){
      if( pIter->abTblPk[i] ){
        zList = FUNC0(p, "%z%sc%d=?%d", zList, zSep, i, i+1);
        zSep = " AND ";
      }
    }
    zList = FUNC0(p, 
        "_rowid_ = (SELECT id FROM rbu_imposter2 WHERE %z)", zList
    );

  }else{
    const char *zSep = "";
    int i;
    for(i=0; i<pIter->nTblCol; i++){
      if( pIter->abTblPk[i] ){
        const char *zCol = pIter->azTblCol[i];
        zList = FUNC0(p, "%z%s\"%w\"=?%d", zList, zSep, zCol, i+1);
        zSep = " AND ";
      }
    }
  }
  return zList;
}