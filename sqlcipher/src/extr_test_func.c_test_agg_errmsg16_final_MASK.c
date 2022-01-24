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
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(sqlite3_context *ctx){
#ifndef SQLITE_OMIT_UTF16
  const void *z;
  sqlite3 * db = FUNC1(ctx);
  FUNC0(ctx, 2048);
  z = FUNC2(db);
  FUNC3(ctx, z, -1, SQLITE_TRANSIENT);
#endif
}