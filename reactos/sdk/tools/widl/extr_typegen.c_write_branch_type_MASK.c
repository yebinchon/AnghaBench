#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int typestring_offset; } ;
typedef  TYPE_1__ type_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ TYPE_BASIC ; 
 scalar_t__ TYPE_ENUM ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 unsigned char FUNC1 (TYPE_1__ const*) ; 
 unsigned char FUNC2 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char) ; 
 scalar_t__ FUNC5 (TYPE_1__ const*) ; 

__attribute__((used)) static void FUNC6(FILE *file, const type_t *t, unsigned int *tfsoff)
{
    if (t == NULL)
    {
        FUNC3(file, 2, "NdrFcShort(0x0),\t/* No type */\n");
    }
    else
    {
        if (FUNC5(t) == TYPE_BASIC || FUNC5(t) == TYPE_ENUM)
        {
            unsigned char fc;
            if (FUNC5(t) == TYPE_BASIC)
                fc = FUNC1(t);
            else
                fc = FUNC2(t);
            FUNC3(file, 2, "NdrFcShort(0x80%02x),\t/* Simple arm type: %s */\n",
                       fc, FUNC4(fc));
        }
        else if (t->typestring_offset)
        {
            short reloff = t->typestring_offset - *tfsoff;
            FUNC3(file, 2, "NdrFcShort(0x%hx),\t/* Offset= %d (%d) */\n",
                       reloff, reloff, t->typestring_offset);
        }
        else
            FUNC0("write_branch_type: type unimplemented %d\n", FUNC5(t));
    }

    *tfsoff += 2;
}