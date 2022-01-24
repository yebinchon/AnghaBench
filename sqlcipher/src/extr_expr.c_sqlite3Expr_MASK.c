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
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_3__ {char const* z; int /*<<< orphan*/  n; } ;
typedef  TYPE_1__ Token ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

Expr *FUNC2(
  sqlite3 *db,            /* Handle for sqlite3DbMallocZero() (may be null) */
  int op,                 /* Expression opcode */
  const char *zToken      /* Token argument.  Might be NULL */
){
  Token x;
  x.z = zToken;
  x.n = FUNC1(zToken);
  return FUNC0(db, op, &x, 0);
}