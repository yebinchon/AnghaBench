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
typedef  int /*<<< orphan*/  type_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*,char const*,char const*,...) ; 

__attribute__((used)) static void FUNC4(FILE *file, int indent, const type_t *t, const char *n, const char *local_var_prefix)
{
    if (FUNC0(t))
    {
        FUNC3(file, indent, "MIDL_memset(&%s%s, 0, sizeof(%s%s));\n",
                   local_var_prefix, n, local_var_prefix, n);
        FUNC3(file, indent, "%s_p_%s = &%s%s;\n", local_var_prefix, n, local_var_prefix, n);
    }
    else if (FUNC2(t) || FUNC1(t))
        FUNC3(file, indent, "%s%s = 0;\n", local_var_prefix, n);
}