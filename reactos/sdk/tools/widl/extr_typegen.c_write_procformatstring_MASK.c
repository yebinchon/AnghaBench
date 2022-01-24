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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  write_iface_procformatstring ; 

void FUNC2(FILE *file, const statement_list_t *stmts, type_pred_t pred)
{
    int indent = 0;
    unsigned int offset = 0;

    FUNC1(file, indent, "static const MIDL_PROC_FORMAT_STRING __MIDL_ProcFormatString =\n");
    FUNC1(file, indent, "{\n");
    indent++;
    FUNC1(file, indent, "0,\n");
    FUNC1(file, indent, "{\n");
    indent++;

    FUNC0(stmts, write_iface_procformatstring, pred, file, indent, &offset);

    FUNC1(file, indent, "0x0\n");
    indent--;
    FUNC1(file, indent, "}\n");
    indent--;
    FUNC1(file, indent, "};\n");
    FUNC1(file, indent, "\n");
}