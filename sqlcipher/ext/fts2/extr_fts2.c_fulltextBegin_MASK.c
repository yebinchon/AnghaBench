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
struct TYPE_3__ {scalar_t__ nPendingData; } ;
typedef  TYPE_1__ fulltext_vtab ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(sqlite3_vtab *pVtab){
  fulltext_vtab *v = (fulltext_vtab *) pVtab;
  FUNC0(("FTS2 xBegin()\n"));

  /* Any buffered updates should have been cleared by the previous
  ** transaction.
  */
  FUNC1( v->nPendingData<0 );
  return FUNC2(v);
}