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
struct TYPE_2__ {int /*<<< orphan*/  extname; scalar_t__ if_not_exists; } ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_1__ CreateExtensionStmt ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  EXTENSION_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  loaded ; 
 int /*<<< orphan*/  soversion ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC7(Node *utility_stmt)
{
	CreateExtensionStmt *stmt = (CreateExtensionStmt *) utility_stmt;
	bool is_extension = FUNC6(stmt->extname, EXTENSION_NAME) == 0;

	if (!is_extension)
		return false;

	if (!loaded)
		return true;

	/*
	 * If the extension exists and the create statement has an IF NOT EXISTS
	 * option, we continue without loading and let CREATE EXTENSION bail out
	 * with a standard NOTICE. We can only do this if the extension actually
	 * exists (is created), or else we might potentially load the shared
	 * library of another version of the extension. Loading typically happens
	 * on CREATE EXTENSION (via CREATE FUNCTION as SQL files are installed)
	 * even if we do not explicitly load the library here. If we load another
	 * version of the library, in addition to the currently loaded version, we
	 * might taint the backend.
	 */
	if (FUNC5() && stmt->if_not_exists)
		return false;

	/* disallow loading two .so from different versions */
	FUNC0(ERROR,
			(FUNC1(ERRCODE_DUPLICATE_OBJECT),
			 FUNC4("extension \"%s\" has already been loaded with another version", stmt->extname),
			 FUNC2("The loaded version is \"%s\".", soversion),
			 FUNC3("Start a new session and execute CREATE EXTENSION as the first command. "
					 "Make sure to pass the \"-X\" flag to psql.")));
	return false;
}