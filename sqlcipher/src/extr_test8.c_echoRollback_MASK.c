#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab ;
struct TYPE_2__ {scalar_t__ inTransaction; } ;
typedef  TYPE_1__ echo_vtab ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC2(sqlite3_vtab *tab){
  int rc;
  echo_vtab *pVtab = (echo_vtab*)tab;

  /* Ticket #3083 - Only call xRollback if we have previously started
  ** a transaction */
  FUNC0( pVtab->inTransaction );

  rc = FUNC1(tab, "xRollback");
  pVtab->inTransaction = 0;
  return rc;
}