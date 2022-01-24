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
typedef  int /*<<< orphan*/  type_pred_t ;
typedef  int /*<<< orphan*/  statement_list_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(FILE *file, const statement_list_t *stmts, type_pred_t pred)
{
    int indent = 0;

    FUNC0(file, indent, "static const MIDL_TYPE_FORMAT_STRING __MIDL_TypeFormatString =\n");
    FUNC0(file, indent, "{\n");
    indent++;
    FUNC0(file, indent, "0,\n");
    FUNC0(file, indent, "{\n");
    indent++;
    FUNC0(file, indent, "NdrFcShort(0x0),\n");

    FUNC2(TRUE);
    FUNC1(file, stmts, pred);

    FUNC0(file, indent, "0x0\n");
    indent--;
    FUNC0(file, indent, "}\n");
    indent--;
    FUNC0(file, indent, "};\n");
    FUNC0(file, indent, "\n");
}