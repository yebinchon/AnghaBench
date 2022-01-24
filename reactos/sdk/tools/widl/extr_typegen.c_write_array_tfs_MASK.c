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
typedef  int /*<<< orphan*/  expr_t ;
typedef  int /*<<< orphan*/  attr_list_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_POINTERTYPE ; 
 int /*<<< orphan*/  FALSE ; 
 unsigned char FC_BOGUS_ARRAY ; 
 int /*<<< orphan*/  FC_END ; 
 unsigned char FC_LGFARRAY ; 
 unsigned char FC_LGVARRAY ; 
 int /*<<< orphan*/  FC_PAD ; 
 int /*<<< orphan*/  FC_PP ; 
 int FC_RP ; 
 unsigned char FC_SMVARRAY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * current_structure ; 
 unsigned char FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*,unsigned short,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC6 (unsigned char) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,unsigned int*) ; 

__attribute__((used)) static unsigned int FUNC21(FILE *file, const attr_list_t *attrs, type_t *type,
                                    const char *name, unsigned int *typestring_offset)
{
    const expr_t *length_is = FUNC10(type);
    const expr_t *size_is = FUNC7(type);
    unsigned int align;
    unsigned int size;
    unsigned int start_offset;
    unsigned char fc;
    int pointer_type = FUNC1(attrs, ATTR_POINTERTYPE);
    unsigned int baseoff
        = !FUNC11(type) && current_structure
        ? FUNC14(current_structure)
        : 0;

    if (!pointer_type)
        pointer_type = FC_RP;

    if (!FUNC3(attrs, FUNC9(type)))
        FUNC18(file, attrs, FUNC9(type), name, FALSE, typestring_offset);

    size = FUNC14(FUNC2(type) ? FUNC9(type) : type);
    align = FUNC12(FUNC2(type) ? FUNC9(type) : type);
    fc = FUNC0(type);

    start_offset = *typestring_offset;
    FUNC15(type, start_offset, file);
    FUNC5(file, type, start_offset);
    FUNC4(file, 2, "0x%02x,\t/* %s */\n", fc, FUNC6(fc));
    FUNC4(file, 2, "0x%x,\t/* %d */\n", align - 1, align - 1);
    *typestring_offset += 2;

    align = 0;
    if (fc != FC_BOGUS_ARRAY)
    {
        if (fc == FC_LGFARRAY || fc == FC_LGVARRAY)
        {
            FUNC4(file, 2, "NdrFcLong(0x%x),\t/* %u */\n", size, size);
            *typestring_offset += 4;
        }
        else
        {
            FUNC4(file, 2, "NdrFcShort(0x%hx),\t/* %u */\n", (unsigned short)size, size);
            *typestring_offset += 2;
        }

        if (FUNC2(type))
            *typestring_offset
                += FUNC17(file, current_structure, baseoff,
                                          type, size_is);

        if (fc == FC_SMVARRAY || fc == FC_LGVARRAY)
        {
            unsigned int elsize = FUNC14(FUNC9(type));
            unsigned int dim = FUNC8(type);

            if (fc == FC_LGVARRAY)
            {
                FUNC4(file, 2, "NdrFcLong(0x%x),\t/* %u */\n", dim, dim);
                *typestring_offset += 4;
            }
            else
            {
                FUNC4(file, 2, "NdrFcShort(0x%hx),\t/* %u */\n", (unsigned short)dim, dim);
                *typestring_offset += 2;
            }

            FUNC4(file, 2, "NdrFcShort(0x%hx),\t/* %u */\n", (unsigned short)elsize, elsize);
            *typestring_offset += 2;
        }

        if (length_is)
            *typestring_offset
                += FUNC17(file, current_structure, baseoff,
                                          type, length_is);

        if (FUNC13(FUNC9(type)) &&
            (FUNC11(type) || !current_structure))
        {
            FUNC4(file, 2, "0x%x,\t/* FC_PP */\n", FC_PP);
            FUNC4(file, 2, "0x%x,\t/* FC_PAD */\n", FC_PAD);
            *typestring_offset += 2;
            FUNC20(file, FUNC3(attrs, type) ? attrs : NULL, type, typestring_offset);
            FUNC4(file, 2, "0x%x,\t/* FC_END */\n", FC_END);
            *typestring_offset += 1;
        }

        FUNC16(file, FUNC3(attrs, type) ? attrs : NULL, type, FALSE, typestring_offset);
        FUNC19(file, typestring_offset);
    }
    else
    {
        unsigned int dim = size_is ? 0 : FUNC8(type);
        FUNC4(file, 2, "NdrFcShort(0x%hx),\t/* %u */\n", (unsigned short)dim, dim);
        *typestring_offset += 2;
        *typestring_offset
            += FUNC17(file, current_structure, baseoff,
                                      type, size_is);
        *typestring_offset
            += FUNC17(file, current_structure, baseoff,
                                      type, length_is);

        FUNC16(file, FUNC3(attrs, type) ? attrs : NULL, type, TRUE, typestring_offset);
        FUNC19(file, typestring_offset);
    }

    return start_offset;
}