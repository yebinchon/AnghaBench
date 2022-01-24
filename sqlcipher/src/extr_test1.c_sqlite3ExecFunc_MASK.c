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
typedef  int /*<<< orphan*/  x ;
struct dstr {int /*<<< orphan*/  z; int /*<<< orphan*/  nUsed; } ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  execFuncCallback ; 
 int /*<<< orphan*/  FUNC0 (struct dstr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,struct dstr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(
  sqlite3_context *context, 
  int argc,  
  sqlite3_value **argv
){
  struct dstr x;
  FUNC0(&x, 0, sizeof(x));
  (void)FUNC1((sqlite3*)FUNC4(context),
      (char*)FUNC5(argv[0]),
      execFuncCallback, &x, 0);
  FUNC3(context, x.z, x.nUsed, SQLITE_TRANSIENT);
  FUNC2(x.z);
}