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
typedef  int /*<<< orphan*/  statement_list_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 char* header_name ; 
 char* input_name ; 
 int /*<<< orphan*/  local_stubs_name ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

void FUNC5(const statement_list_t *stmts)
{
  FILE *local_stubs;

  if (!local_stubs_name) return;

  local_stubs = FUNC2(local_stubs_name, "w");
  if (!local_stubs) {
    FUNC0("Could not open %s for output\n", local_stubs_name);
    return;
  }
  FUNC3(local_stubs, "/* call_as/local stubs for %s */\n\n", input_name);
  FUNC3(local_stubs, "#include <objbase.h>\n");
  FUNC3(local_stubs, "#include \"%s\"\n\n", header_name);

  FUNC4(local_stubs, stmts);

  FUNC1(local_stubs);
}