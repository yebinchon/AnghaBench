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
struct TYPE_3__ {scalar_t__ zErr; int completed; int opnum; scalar_t__ zStaticErr; scalar_t__ db; scalar_t__ pStmt; int /*<<< orphan*/  (* xOp ) (TYPE_1__*) ;int /*<<< orphan*/  zFilename; } ;
typedef  TYPE_1__ Thread ;

/* Variables and functions */
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static void *FUNC10(void *pArg){
  Thread *p = (Thread*)pArg;
  if( p->db ){
    FUNC1(p->db);
  }
  FUNC6(p->zFilename, &p->db);
  if( SQLITE_OK!=FUNC2(p->db) ){
    p->zErr = FUNC8(FUNC3(p->db));
    FUNC1(p->db);
    p->db = 0;
  }
  p->pStmt = 0;
  p->completed = 1;
  while( p->opnum<=p->completed ) FUNC0();
  while( p->xOp ){
    if( p->zErr && p->zErr!=p->zStaticErr ){
      FUNC5(p->zErr);
      p->zErr = 0;
    }
    (*p->xOp)(p);
    p->completed++;
    while( p->opnum<=p->completed ) FUNC0();
  }
  if( p->pStmt ){
    FUNC4(p->pStmt);
    p->pStmt = 0;
  }
  if( p->db ){
    FUNC1(p->db);
    p->db = 0;
  }
  if( p->zErr && p->zErr!=p->zStaticErr ){
    FUNC5(p->zErr);
    p->zErr = 0;
  }
  p->completed++;
#ifndef SQLITE_OMIT_DEPRECATED
  FUNC7();
#endif
  return 0;
}