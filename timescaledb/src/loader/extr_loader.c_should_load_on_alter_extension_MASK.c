#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  extname; } ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_1__ AlterExtensionStmt ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  EXTENSION_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ loaded ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5(Node *utility_stmt)
{
	AlterExtensionStmt *stmt = (AlterExtensionStmt *) utility_stmt;

	if (FUNC4(stmt->extname, EXTENSION_NAME) != 0)
		return true;

	/* disallow loading two .so from different versions */
	if (loaded)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC3("extension \"%s\" cannot be updated after the old version has already been "
						"loaded",
						stmt->extname),
				 FUNC2("Start a new session and execute ALTER EXTENSION as the first command. "
						 "Make sure to pass the \"-X\" flag to psql.")));
	/* do not load the current (old) version's .so */
	return false;
}