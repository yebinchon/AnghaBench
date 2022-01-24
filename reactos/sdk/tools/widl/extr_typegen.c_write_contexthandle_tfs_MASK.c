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
 int /*<<< orphan*/  FC_BIND_CONTEXT ; 
 int FC_RP ; 
 unsigned char NDR_CONTEXT_HANDLE_CANNOT_BE_NULL ; 
 unsigned char NDR_CONTEXT_HANDLE_NOSERIALIZE ; 
 unsigned char NDR_CONTEXT_HANDLE_SERIALIZE ; 
 unsigned char NDR_STRICT_CONTEXT_HANDLE ; 
 int /*<<< orphan*/  current_iface ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC7(FILE *file,
                                            const attr_list_t *attrs,
                                            type_t *type,
                                            int toplevel_param,
                                            unsigned int *typeformat_offset)
{
    unsigned int start_offset = *typeformat_offset;
    unsigned char flags = FUNC1( current_iface, attrs, type );

    FUNC4(file, type, start_offset);

    if (flags & 0x80)  /* via ptr */
    {
        int pointer_type = FUNC2( type, attrs, toplevel_param );
        if (!pointer_type) pointer_type = FC_RP;
        *typeformat_offset += 4;
        FUNC3(file, 2,"0x%x, 0x0,\t/* %s */\n", pointer_type, FUNC5(pointer_type) );
        FUNC3(file, 2, "NdrFcShort(0x2),\t /* Offset= 2 (%u) */\n", *typeformat_offset);
        FUNC3(file, 0, "/* %2u */\n", *typeformat_offset);
    }

    FUNC3(file, 2, "0x%02x,\t/* FC_BIND_CONTEXT */\n", FC_BIND_CONTEXT);
    FUNC3(file, 2, "0x%x,\t/* Context flags: ", flags);
    /* return and can't be null values overlap */
    if (((flags & 0x21) != 0x21) && (flags & NDR_CONTEXT_HANDLE_CANNOT_BE_NULL))
        FUNC3(file, 0, "can't be null, ");
    if (flags & NDR_CONTEXT_HANDLE_SERIALIZE)
        FUNC3(file, 0, "serialize, ");
    if (flags & NDR_CONTEXT_HANDLE_NOSERIALIZE)
        FUNC3(file, 0, "no serialize, ");
    if (flags & NDR_STRICT_CONTEXT_HANDLE)
        FUNC3(file, 0, "strict, ");
    if ((flags & 0x21) == 0x20)
        FUNC3(file, 0, "out, ");
    if ((flags & 0x21) == 0x21)
        FUNC3(file, 0, "return, ");
    if (flags & 0x40)
        FUNC3(file, 0, "in, ");
    if (flags & 0x80)
        FUNC3(file, 0, "via ptr, ");
    FUNC3(file, 0, "*/\n");
    FUNC3(file, 2, "0x%x,\t/* rundown routine */\n", FUNC0( type ));
    FUNC3(file, 2, "0, /* FIXME: param num */\n");
    *typeformat_offset += 4;

    FUNC6( type, start_offset, file );
    return start_offset;
}