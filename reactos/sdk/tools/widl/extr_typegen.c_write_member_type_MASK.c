#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {unsigned int typestring_offset; } ;
typedef  TYPE_1__ type_t ;
typedef  int /*<<< orphan*/  attr_list_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_SWITCHIS ; 
 unsigned char FC_LONG ; 
 unsigned char FC_POINTER ; 
 scalar_t__ TYPE_UNION ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__ const*) ; 
 scalar_t__ FUNC3 (TYPE_1__ const*) ; 
 scalar_t__ FUNC4 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char) ; 
 scalar_t__ FUNC7 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__ const*,unsigned int*) ; 

__attribute__((used)) static void FUNC9(FILE *file, const type_t *cont,
                              int cont_is_complex, const attr_list_t *attrs,
                              const type_t *type, unsigned int *corroff,
                              unsigned int *tfsoff)
{
    if (FUNC3(type) && !FUNC2(type))
    {
        unsigned int absoff;
        short reloff;

        if (FUNC7(type) == TYPE_UNION && FUNC1(attrs, ATTR_SWITCHIS))
        {
            absoff = *corroff;
            *corroff += 8;
        }
        else
        {
            absoff = type->typestring_offset;
        }
        reloff = absoff - (*tfsoff + 2);

        FUNC5(file, 2, "0x4c,\t/* FC_EMBEDDED_COMPLEX */\n");
        /* padding is represented using FC_STRUCTPAD* types, so presumably
         * this is left over in the format for historical purposes in MIDL
         * or rpcrt4. */
        FUNC5(file, 2, "0x0,\n");
        FUNC5(file, 2, "NdrFcShort(0x%hx),\t/* Offset= %hd (%u) */\n",
                   reloff, reloff, absoff);
        *tfsoff += 4;
    }
    else if (FUNC4(type) || FUNC2(type))
    {
        unsigned char fc = cont_is_complex ? FC_POINTER : FC_LONG;
        FUNC5(file, 2, "0x%x,\t/* %s */\n", fc, FUNC6(fc));
        *tfsoff += 1;
    }
    else if (!FUNC8(file, type, tfsoff))
        FUNC0("Unsupported member type %d\n", FUNC7(type));
}