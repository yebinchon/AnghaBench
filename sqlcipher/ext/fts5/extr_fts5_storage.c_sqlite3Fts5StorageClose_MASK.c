#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * aStmt; } ;
typedef  TYPE_1__ Fts5Storage ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int FUNC3(Fts5Storage *p){
  int rc = SQLITE_OK;
  if( p ){
    int i;

    /* Finalize all SQL statements */
    for(i=0; i<FUNC0(p->aStmt); i++){
      FUNC1(p->aStmt[i]);
    }

    FUNC2(p);
  }
  return rc;
}