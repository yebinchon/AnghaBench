#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  Fts5FullTable ;

/* Variables and functions */
 int /*<<< orphan*/  FTS5_COMMIT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(sqlite3_vtab *pVtab){
  FUNC0(pVtab);  /* Call below is a no-op for NDEBUG builds */
  FUNC1((Fts5FullTable*)pVtab, FTS5_COMMIT, 0);
  return SQLITE_OK;
}