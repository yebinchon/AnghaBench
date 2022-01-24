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
typedef  int /*<<< orphan*/  sqlite3_vtab ;
struct TYPE_4__ {int /*<<< orphan*/  pStorage; } ;
typedef  TYPE_1__ Fts5FullTable ;

/* Variables and functions */
 int /*<<< orphan*/  FTS5_ROLLBACKTO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(sqlite3_vtab *pVtab, int iSavepoint){
  Fts5FullTable *pTab = (Fts5FullTable*)pVtab;
  FUNC0(iSavepoint);  /* Call below is a no-op for NDEBUG builds */
  FUNC1(pTab, FTS5_ROLLBACKTO, iSavepoint);
  FUNC2(pTab);
  return FUNC3(pTab->pStorage);
}