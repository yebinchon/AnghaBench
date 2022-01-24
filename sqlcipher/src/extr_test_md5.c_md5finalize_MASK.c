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
typedef  int /*<<< orphan*/  MD5Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(sqlite3_context *context){
  MD5Context *p;
  unsigned char digest[16];
  char zBuf[33];
  p = FUNC2(context, sizeof(*p));
  FUNC1(digest,p);
  FUNC0(digest, zBuf);
  FUNC3(context, zBuf, -1, SQLITE_TRANSIENT);
}