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
typedef  int /*<<< orphan*/  sqlite3_vtab ;
struct TYPE_3__ {scalar_t__ inTransaction; } ;
typedef  TYPE_1__ echo_vtab ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(sqlite3_vtab *tab){
  echo_vtab *pVtab = (echo_vtab*)tab;
  int rc;

  /* Ticket #3083 - Only call xCommit if we have previously started
  ** a transaction */
  FUNC0( pVtab->inTransaction );

  if( FUNC2(pVtab, "xCommit") ){
    return SQLITE_ERROR;
  }

  FUNC3();
  rc = FUNC1(tab, "xCommit");
  FUNC4();
  pVtab->inTransaction = 0;
  return rc;
}