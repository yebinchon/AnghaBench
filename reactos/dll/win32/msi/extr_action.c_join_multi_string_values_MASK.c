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
typedef  enum join_op { ____Placeholder_join_op } join_op ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  JOIN_OP_APPEND 130 
#define  JOIN_OP_PREPEND 129 
#define  JOIN_OP_REPLACE 128 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

__attribute__((used)) static WCHAR *FUNC3( enum join_op op, WCHAR **old, DWORD old_count,
                                        WCHAR **new, DWORD new_count, DWORD *size )
{
    switch (op)
    {
    case JOIN_OP_APPEND:
        old_count = FUNC2( old, old_count, new, new_count );
        return FUNC1( old, old_count, new, new_count, size );

    case JOIN_OP_PREPEND:
        old_count = FUNC2( old, old_count, new, new_count );
        return FUNC1( new, new_count, old, old_count, size );

    case JOIN_OP_REPLACE:
        return FUNC1( new, new_count, NULL, 0, size );

    default:
        FUNC0("unhandled join op %u\n", op);
        return NULL;
    }
}