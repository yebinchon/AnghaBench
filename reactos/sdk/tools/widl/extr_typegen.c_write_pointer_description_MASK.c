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
typedef  int /*<<< orphan*/  type_t ;
typedef  int /*<<< orphan*/  attr_list_t ;
struct TYPE_2__ {int /*<<< orphan*/ * type; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FC_CPSTRUCT ; 
 scalar_t__ TYPE_STRUCT ; 
 int /*<<< orphan*/  current_structure ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static void FUNC11(FILE *file, const attr_list_t *attrs, type_t *type,
                                      unsigned int *typestring_offset)
{
    unsigned int offset_in_buffer;
    unsigned int offset_in_memory;

    /* pass 1: search for single instance of a pointer (i.e. don't descend
     * into arrays) */
    if (!FUNC2(type))
    {
        offset_in_memory = 0;
        offset_in_buffer = 0;
        FUNC9(
            file, NULL, type,
            &offset_in_memory, &offset_in_buffer, typestring_offset);
    }

    /* pass 2: search for pointers in fixed arrays */
    offset_in_memory = 0;
    offset_in_buffer = 0;
    FUNC8(
        file, NULL, type,
        &offset_in_memory, &offset_in_buffer, typestring_offset);

    /* pass 3: search for pointers in conformant only arrays (but don't descend
     * into conformant varying or varying arrays) */
    if (FUNC3(type) &&
        (FUNC4(type) || !current_structure))
        FUNC7(
            file, attrs, type, 0, typestring_offset);
    else if (FUNC5(type) == TYPE_STRUCT &&
             FUNC1(type) == FC_CPSTRUCT)
    {
        type_t *carray = FUNC0(type)->type;
        FUNC7( file, NULL, carray,
                                                     FUNC6(type), typestring_offset);
    }

    /* pass 4: search for pointers in varying arrays */
    offset_in_memory = 0;
    offset_in_buffer = 0;
    FUNC10(
            file, NULL, type,
            &offset_in_memory, &offset_in_buffer, typestring_offset);
}