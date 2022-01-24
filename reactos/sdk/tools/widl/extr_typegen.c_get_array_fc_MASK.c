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

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 unsigned char FC_BOGUS_ARRAY ; 
#define  FC_BOGUS_STRUCT 141 
 unsigned char FC_CARRAY ; 
 unsigned char FC_CVARRAY ; 
 int /*<<< orphan*/  FC_ENUM16 ; 
 unsigned char FC_LGFARRAY ; 
 unsigned char FC_LGVARRAY ; 
 int /*<<< orphan*/  FC_RP ; 
 unsigned char FC_SMFARRAY ; 
 unsigned char FC_SMVARRAY ; 
 int /*<<< orphan*/  TDT_IGNORE_STRINGS ; 
#define  TGT_ARRAY 140 
#define  TGT_BASIC 139 
#define  TGT_CTXT_HANDLE 138 
#define  TGT_CTXT_HANDLE_POINTER 137 
#define  TGT_ENUM 136 
#define  TGT_IFACE_POINTER 135 
#define  TGT_INVALID 134 
#define  TGT_POINTER 133 
#define  TGT_RANGE 132 
#define  TGT_STRING 131 
#define  TGT_STRUCT 130 
#define  TGT_UNION 129 
#define  TGT_USER_TYPE 128 
 int /*<<< orphan*/  TYPE_BASIC_INT3264 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int pointer_size ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 unsigned int FUNC8 (int /*<<< orphan*/  const*) ; 
 int FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned char FUNC10(const type_t *type)
{
    unsigned char fc;
    const expr_t *size_is;
    const type_t *elem_type;

    elem_type = FUNC5(type);
    size_is = FUNC3(type);

    if (!size_is)
    {
        unsigned int size = FUNC8(elem_type);
        if (size * FUNC4(type) > 0xffffuL)
            fc = FC_LGFARRAY;
        else
            fc = FC_SMFARRAY;
    }
    else
        fc = FC_CARRAY;

    if (FUNC6(type))
    {
        if (fc == FC_SMFARRAY)
            fc = FC_SMVARRAY;
        else if (fc == FC_LGFARRAY)
            fc = FC_LGVARRAY;
        else if (fc == FC_CARRAY)
            fc = FC_CVARRAY;
    }

    switch (FUNC9(elem_type, NULL, TDT_IGNORE_STRINGS))
    {
    case TGT_USER_TYPE:
        fc = FC_BOGUS_ARRAY;
        break;
    case TGT_BASIC:
        if (FUNC7(elem_type) == TYPE_BASIC_INT3264 &&
            pointer_size != 4)
            fc = FC_BOGUS_ARRAY;
        break;
    case TGT_STRUCT:
        switch (FUNC2(elem_type))
        {
        case FC_BOGUS_STRUCT:
            fc = FC_BOGUS_ARRAY;
            break;
        }
        break;
    case TGT_ENUM:
        /* is 16-bit enum - if so, wire size differs from mem size and so
         * the array cannot be block copied, which means the array is complex */
        if (FUNC0(elem_type) == FC_ENUM16)
            fc = FC_BOGUS_ARRAY;
        break;
    case TGT_UNION:
    case TGT_IFACE_POINTER:
        fc = FC_BOGUS_ARRAY;
        break;
    case TGT_POINTER:
        /* ref pointers cannot just be block copied. unique pointers to
         * interfaces need special treatment. either case means the array is
         * complex */
        if (FUNC1(elem_type, NULL, FALSE) == FC_RP || pointer_size != 4)
            fc = FC_BOGUS_ARRAY;
        break;
    case TGT_RANGE:
        fc = FC_BOGUS_ARRAY;
        break;
    case TGT_CTXT_HANDLE:
    case TGT_CTXT_HANDLE_POINTER:
    case TGT_STRING:
    case TGT_INVALID:
    case TGT_ARRAY:
        /* nothing to do for everything else */
        break;
    }

    return fc;
}