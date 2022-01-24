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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 char* FUNC2 () ; 
 char* FUNC3 () ; 

__attribute__((used)) static void FUNC4(const char *argv0){
  FUNC1("Usage: %s [OPTIONS] DATABASE LOG\n\n", argv0);
  FUNC1(
    "DATABASE is an SQLite database against which various statements\n"
    "have been run.  The SQL text is stored in LOG.  LOG is an SQLite\n"
    "database with this schema:\n"
    "\n"
    "    CREATE TABLE sqllog(sql TEXT);\n"
    "\n"
    "This utility program analyzes statements contained in LOG and prints\n"
    "a report showing how many times each index in DATABASE is used by the\n"
    "statements in LOG.\n"
    "\n"
    "DATABASE only needs to contain the schema used by the statements in\n"
    "LOG. The content can be removed from DATABASE.\n"
  );
  FUNC1(
    "\nOPTIONS:\n\n"
    "    --progress N   Show a progress message after every N input rows\n"
    "    -q             Omit error message when parsing log entries\n"
    "    --using NAME   Print SQL statements that use index NAME\n"
  );
  FUNC1("\nAnalysis will be done by SQLite version %s dated %.20s\n"
         "checkin number %.40s. Different versions\n"
         "of SQLite might use different indexes.\n",
         FUNC2(), FUNC3(), FUNC3()+21);
  FUNC0(1);
}