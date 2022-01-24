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
typedef  int /*<<< orphan*/  var_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*,char*) ; 

void FUNC2(FILE *file, int indent, const var_t *func, int is_server)
{
    FUNC1(file, indent, "__frame->_StubMsg.FullPtrXlatTables = NdrFullPointerXlatInit(0,%s);\n",
                   is_server ? "XLAT_SERVER" : "XLAT_CLIENT");
    FUNC0(file, "\n");
}