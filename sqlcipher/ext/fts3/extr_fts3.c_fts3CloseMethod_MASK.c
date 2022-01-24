#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
struct TYPE_6__ {scalar_t__ pVtab; } ;
struct TYPE_8__ {TYPE_1__ base; } ;
struct TYPE_7__ {scalar_t__ pSegments; } ;
typedef  TYPE_2__ Fts3Table ;
typedef  TYPE_3__ Fts3Cursor ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC3(sqlite3_vtab_cursor *pCursor){
  Fts3Cursor *pCsr = (Fts3Cursor *)pCursor;
  FUNC0( ((Fts3Table *)pCsr->base.pVtab)->pSegments==0 );
  FUNC1(pCsr);
  FUNC0( ((Fts3Table *)pCsr->base.pVtab)->pSegments==0 );
  FUNC2(pCsr);
  return SQLITE_OK;
}