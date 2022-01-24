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
typedef  int /*<<< orphan*/  Fts5Table ;
typedef  int /*<<< orphan*/  Fts5FullTable ;

/* Variables and functions */
 int /*<<< orphan*/  FTS5_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(sqlite3_vtab *pVtab, int iSavepoint){
  FUNC0(iSavepoint);  /* Call below is a no-op for NDEBUG builds */
  FUNC1((Fts5FullTable*)pVtab, FTS5_RELEASE, iSavepoint);
  return FUNC2((Fts5Table*)pVtab);
}