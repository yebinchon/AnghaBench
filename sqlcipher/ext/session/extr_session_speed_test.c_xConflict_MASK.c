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
typedef  int /*<<< orphan*/  sqlite3_changeset_iter ;

/* Variables and functions */
 int SQLITE_CHANGESET_ABORT ; 

__attribute__((used)) static int FUNC0(void *pCtx, int eConflict, sqlite3_changeset_iter *p){
  return SQLITE_CHANGESET_ABORT;
}