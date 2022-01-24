#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {unsigned int typestring_offset; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ type_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FC_RP ; 
 scalar_t__ FC_UP ; 
 int /*<<< orphan*/  FC_USER_MARSHAL ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ TYPE_BASIC ; 
 scalar_t__ TYPE_ENUM ; 
 scalar_t__ TYPE_POINTER ; 
 unsigned char FUNC0 (TYPE_1__*) ; 
 unsigned char FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,unsigned int) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char) ; 
 unsigned int FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 unsigned int FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 unsigned short FUNC14 (char const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static unsigned int FUNC16(FILE *file, type_t *type, unsigned int *tfsoff)
{
    unsigned int start, absoff, flags;
    const char *name = NULL;
    type_t *utype = FUNC3(type, &name);
    unsigned int usize = FUNC11(utype);
    unsigned int ualign = FUNC9(utype);
    unsigned int size = FUNC11(type);
    unsigned short funoff = FUNC14(name);
    short reloff;

    if (FUNC7(type)) return type->typestring_offset;

    FUNC4(type);

    if(FUNC13(utype)) usize = 0;

    if (FUNC10(utype) == TYPE_BASIC ||
        FUNC10(utype) == TYPE_ENUM)
    {
        unsigned char fc;

        if (FUNC10(utype) == TYPE_ENUM)
            fc = FUNC1(utype);
        else
            fc = FUNC0(utype);

        absoff = *tfsoff;
        FUNC6(file, utype, absoff);
        FUNC5(file, 2, "0x%x,\t/* %s */\n", fc, FUNC8(fc));
        FUNC5(file, 2, "0x5c,\t/* FC_PAD */\n");
        *tfsoff += 2;
    }
    else
    {
        if (!FUNC7(utype))
            FUNC15(file, NULL, utype, utype->name, TRUE, tfsoff);
        absoff = utype->typestring_offset;
    }

    if (FUNC10(utype) == TYPE_POINTER && FUNC2(utype, NULL, FALSE) == FC_RP)
        flags = 0x40;
    else if (FUNC10(utype) == TYPE_POINTER && FUNC2(utype, NULL, FALSE) == FC_UP)
        flags = 0x80;
    else
        flags = 0;

    start = *tfsoff;
    FUNC12(type, start, file);
    FUNC6(file, type, start);
    FUNC5(file, 2, "0x%x,\t/* FC_USER_MARSHAL */\n", FC_USER_MARSHAL);
    FUNC5(file, 2, "0x%x,\t/* Alignment= %d, Flags= %02x */\n",
               flags | (ualign - 1), ualign - 1, flags);
    FUNC5(file, 2, "NdrFcShort(0x%hx),\t/* Function offset= %hu */\n", funoff, funoff);
    FUNC5(file, 2, "NdrFcShort(0x%hx),\t/* %u */\n", (unsigned short)size, size);
    FUNC5(file, 2, "NdrFcShort(0x%hx),\t/* %u */\n", (unsigned short)usize, usize);
    *tfsoff += 8;
    reloff = absoff - *tfsoff;
    FUNC5(file, 2, "NdrFcShort(0x%hx),\t/* Offset= %hd (%u) */\n", reloff, reloff, absoff);
    *tfsoff += 2;
    return start;
}