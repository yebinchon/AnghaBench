#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sltg_typelib {TYPE_2__* typelib; } ;
typedef  int /*<<< orphan*/  library_block_start ;
struct TYPE_4__ {int cval; } ;
typedef  TYPE_1__ expr_t ;
struct TYPE_5__ {int /*<<< orphan*/  attrs; } ;
typedef  int SIZE_T ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_ID ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ output_buffer ; 
 int output_buffer_pos ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sltg_typelib*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct sltg_typelib*) ; 
 int /*<<< orphan*/  FUNC8 (struct sltg_typelib*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct sltg_typelib*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  typelib_name ; 

__attribute__((used)) static void FUNC13(struct sltg_typelib *typelib)
{
    int library_block_start;
    int *name_table_offset;

    FUNC6(typelib, &library_block_start);
    FUNC10(typelib);

    name_table_offset = (int *)(output_buffer + output_buffer_pos);
    FUNC1("name_table_offset = %#lx\n", (SIZE_T)output_buffer_pos);
    FUNC5(&library_block_start, sizeof(library_block_start));

    FUNC7(typelib);

    *name_table_offset = output_buffer_pos - library_block_start;
    FUNC1("*name_table_offset = %#x\n", *name_table_offset);

    FUNC8(typelib);
    FUNC9();

    if (FUNC12(typelib_name, ".res")) /* create a binary resource file */
    {
        char typelib_id[13] = "#1";

        expr_t *expr = FUNC3(typelib->typelib->attrs, ATTR_ID);
        if (expr)
            FUNC11(typelib_id, "#%d", expr->cval);
        FUNC0("TYPELIB", typelib_id);
        FUNC4(typelib->typelib);
    }
    else FUNC2(typelib_name);
}