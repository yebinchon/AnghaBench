#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ type_t ;
typedef  enum type_context { ____Placeholder_type_context } type_context ;
typedef  int /*<<< orphan*/  attr_list_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_IN ; 
 int /*<<< orphan*/  ATTR_OUT ; 
 unsigned char FC_ALLOCED_ON_STACK ; 
 unsigned char FC_ENUM16 ; 
 unsigned char FC_RP ; 
 unsigned char FC_SIMPLE_POINTER ; 
 scalar_t__ MODE_Oif ; 
 int TYPE_CONTEXT_TOPLEVELPARAM ; 
 scalar_t__ TYPE_ENUM ; 
 int /*<<< orphan*/  current_func ; 
 int /*<<< orphan*/  current_iface ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 unsigned char FUNC1 (TYPE_1__ const*) ; 
 unsigned char FUNC2 (TYPE_1__ const*) ; 
 unsigned char FUNC3 (TYPE_1__ const*,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char) ; 
 scalar_t__ FUNC10 (TYPE_1__ const*) ; 
 TYPE_1__* FUNC11 (TYPE_1__ const*) ; 

__attribute__((used)) static unsigned int FUNC12(FILE *file, const attr_list_t *attrs,
                                         const type_t *type, enum type_context context)
{
    unsigned char fc;
    unsigned char pointer_fc;
    const type_t *ref;
    int in_attr = FUNC5(attrs, ATTR_IN);
    int out_attr = FUNC5(attrs, ATTR_OUT);
    unsigned char flags = FC_SIMPLE_POINTER;

    /* for historical reasons, write_simple_pointer also handled string types,
     * but no longer does. catch bad uses of the function with this check */
    if (FUNC7(attrs, type))
        FUNC0("write_simple_pointer: can't handle type %s which is a string type\n", type->name);

    pointer_fc = FUNC3(type, attrs, context);

    ref = FUNC11(type);
    if (FUNC10(ref) == TYPE_ENUM)
        fc = FUNC2(ref);
    else
        fc = FUNC1(ref);

    if (!FUNC6(current_iface, current_func))
    {
        if (out_attr && !in_attr && pointer_fc == FC_RP)
            flags |= FC_ALLOCED_ON_STACK;
    }
    else if (FUNC4() == MODE_Oif)
    {
        if (context == TYPE_CONTEXT_TOPLEVELPARAM && fc == FC_ENUM16 && pointer_fc == FC_RP)
            flags |= FC_ALLOCED_ON_STACK;
    }

    FUNC8(file, 2, "0x%02x, 0x%x,\t/* %s %s[simple_pointer] */\n",
               pointer_fc, flags, FUNC9(pointer_fc),
               flags & FC_ALLOCED_ON_STACK ? "[allocated_on_stack] " : "");
    FUNC8(file, 2, "0x%02x,\t/* %s */\n", fc, FUNC9(fc));
    FUNC8(file, 2, "0x5c,\t/* FC_PAD */\n");
    return 4;
}