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
typedef  int /*<<< orphan*/  sqlite3_stmt ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int FUNC0 (int /*<<< orphan*/ *,int,char const*,int,int /*<<< orphan*/ ) ; 

int FUNC1(sqlite3_stmt *a, int b, const char *c, int d)
{
    return FUNC0(a, b, c, d, SQLITE_TRANSIENT);
}