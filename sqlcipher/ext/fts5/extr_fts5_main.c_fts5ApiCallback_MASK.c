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
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_3__ {int /*<<< orphan*/  pGlobal; } ;
typedef  int /*<<< orphan*/  Fts5Cursor ;
typedef  TYPE_1__ Fts5Auxiliary ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){

  Fts5Auxiliary *pAux;
  Fts5Cursor *pCsr;
  i64 iCsrId;

  FUNC0( argc>=1 );
  pAux = (Fts5Auxiliary*)FUNC6(context);
  iCsrId = FUNC7(argv[0]);

  pCsr = FUNC2(pAux->pGlobal, iCsrId);
  if( pCsr==0 ){
    char *zErr = FUNC4("no such cursor: %lld", iCsrId);
    FUNC5(context, zErr, -1);
    FUNC3(zErr);
  }else{
    FUNC1(pAux, pCsr, context, argc-1, &argv[1]);
  }
}