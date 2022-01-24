#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_9__ {int /*<<< orphan*/  zName; int /*<<< orphan*/  tnum; int /*<<< orphan*/  nCol; } ;
typedef  TYPE_1__ Table ;
struct TYPE_10__ {int /*<<< orphan*/  tnum; } ;
typedef  int /*<<< orphan*/  Parse ;
typedef  TYPE_2__ Index ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int OP_OpenRead ; 
 int OP_OpenWrite ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*) ; 

void FUNC10(
  Parse *pParse,  /* Generate code into this VDBE */
  int iCur,       /* The cursor number of the table */
  int iDb,        /* The database index in sqlite3.aDb[] */
  Table *pTab,    /* The table to be opened */
  int opcode      /* OP_OpenRead or OP_OpenWrite */
){
  Vdbe *v;
  FUNC3( !FUNC1(pTab) );
  v = FUNC4(pParse);
  FUNC3( opcode==OP_OpenWrite || opcode==OP_OpenRead );
  FUNC6(pParse, iDb, pTab->tnum, 
                   (opcode==OP_OpenWrite)?1:0, pTab->zName);
  if( FUNC0(pTab) ){
    FUNC8(v, opcode, iCur, pTab->tnum, iDb, pTab->nCol);
    FUNC2((v, "%s", pTab->zName));
  }else{
    Index *pPk = FUNC5(pTab);
    FUNC3( pPk!=0 );
    FUNC3( pPk->tnum==pTab->tnum );
    FUNC7(v, opcode, iCur, pPk->tnum, iDb);
    FUNC9(pParse, pPk);
    FUNC2((v, "%s", pTab->zName));
  }
}