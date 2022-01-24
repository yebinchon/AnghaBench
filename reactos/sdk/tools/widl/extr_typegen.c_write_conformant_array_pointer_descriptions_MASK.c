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
typedef  int /*<<< orphan*/  attr_list_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FC_FIXED_OFFSET ; 
 int /*<<< orphan*/  FC_VARIABLE_REPEAT ; 
 unsigned int USHRT_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*,unsigned short,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,unsigned int*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static int FUNC7(
    FILE *file, const attr_list_t *attrs, type_t *type,
    unsigned int offset_in_memory, unsigned int *typestring_offset)
{
    int pointer_count = 0;

    if (FUNC1(type) && !FUNC4(type))
    {
        unsigned int temp = 0;
        /* unfortunately, this needs to be done in two passes to avoid
         * writing out redundant FC_VARIABLE_REPEAT descriptions */
        pointer_count = FUNC6(
            NULL, attrs, FUNC3(type), NULL, NULL, &temp);
        if (pointer_count > 0)
        {
            unsigned int increment_size;
            unsigned int offset_of_array_pointer_mem = offset_in_memory;
            unsigned int offset_of_array_pointer_buf = offset_in_memory;

            increment_size = FUNC5(FUNC3(type));

            if (increment_size > USHRT_MAX)
                FUNC0("array size of %u bytes is too large\n", increment_size);

            FUNC2(file, 2, "0x%02x, /* FC_VARIABLE_REPEAT */\n", FC_VARIABLE_REPEAT);
            FUNC2(file, 2, "0x%02x, /* FC_FIXED_OFFSET */\n", FC_FIXED_OFFSET);
            FUNC2(file, 2, "NdrFcShort(0x%hx),\t/* Increment = %d */\n", (unsigned short)increment_size, increment_size);
            FUNC2(file, 2, "NdrFcShort(0x%hx),\t/* Offset to array = %d */\n", (unsigned short)offset_in_memory, offset_in_memory);
            FUNC2(file, 2, "NdrFcShort(0x%hx),\t/* Number of pointers = %d */\n", (unsigned short)pointer_count, pointer_count);
            *typestring_offset += 8;

            pointer_count = FUNC6(
                file, attrs, FUNC3(type),
                &offset_of_array_pointer_mem, &offset_of_array_pointer_buf,
                typestring_offset);
        }
    }

    return pointer_count;
}