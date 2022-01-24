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
typedef  enum typegen_type { ____Placeholder_typegen_type } typegen_type ;
typedef  int /*<<< orphan*/  attr_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_CONTEXTHANDLE ; 
 int /*<<< orphan*/  ATTR_IIDIS ; 
 int /*<<< orphan*/  ATTR_RANGE ; 
 unsigned int TDT_IGNORE_RANGES ; 
 unsigned int TDT_IGNORE_STRINGS ; 
 int TGT_ARRAY ; 
 int TGT_BASIC ; 
 int TGT_CTXT_HANDLE ; 
 int TGT_CTXT_HANDLE_POINTER ; 
 int TGT_ENUM ; 
 int TGT_IFACE_POINTER ; 
 int TGT_INVALID ; 
 int TGT_POINTER ; 
 int TGT_RANGE ; 
 int TGT_STRING ; 
 int TGT_STRUCT ; 
 int TGT_UNION ; 
 int TGT_USER_TYPE ; 
#define  TYPE_ALIAS 141 
#define  TYPE_ARRAY 140 
#define  TYPE_BASIC 139 
#define  TYPE_BITFIELD 138 
#define  TYPE_COCLASS 137 
#define  TYPE_ENCAPSULATED_UNION 136 
#define  TYPE_ENUM 135 
#define  TYPE_FUNCTION 134 
#define  TYPE_INTERFACE 133 
#define  TYPE_MODULE 132 
#define  TYPE_POINTER 131 
#define  TYPE_STRUCT 130 
#define  TYPE_UNION 129 
#define  TYPE_VOID 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC5 (int /*<<< orphan*/  const*) ; 

enum typegen_type FUNC6(const type_t *type, const attr_list_t *attrs, unsigned int flags)
{
    if (FUNC3(type))
        return TGT_USER_TYPE;

    if (FUNC0(type, ATTR_CONTEXTHANDLE))
        return TGT_CTXT_HANDLE;

    if (!(flags & TDT_IGNORE_STRINGS) && FUNC2(attrs, type))
        return TGT_STRING;

    switch (FUNC4(type))
    {
    case TYPE_BASIC:
        if (!(flags & TDT_IGNORE_RANGES) &&
            (FUNC1(attrs, ATTR_RANGE) || FUNC0(type, ATTR_RANGE)))
            return TGT_RANGE;
        return TGT_BASIC;
    case TYPE_ENUM:
        if (!(flags & TDT_IGNORE_RANGES) &&
            (FUNC1(attrs, ATTR_RANGE) || FUNC0(type, ATTR_RANGE)))
            return TGT_RANGE;
        return TGT_ENUM;
    case TYPE_POINTER:
        if (FUNC4(FUNC5(type)) == TYPE_INTERFACE ||
            (FUNC4(FUNC5(type)) == TYPE_VOID && FUNC1(attrs, ATTR_IIDIS)))
            return TGT_IFACE_POINTER;
        else if (FUNC0(FUNC5(type), ATTR_CONTEXTHANDLE))
            return TGT_CTXT_HANDLE_POINTER;
        else
            return TGT_POINTER;
    case TYPE_STRUCT:
        return TGT_STRUCT;
    case TYPE_ENCAPSULATED_UNION:
    case TYPE_UNION:
        return TGT_UNION;
    case TYPE_ARRAY:
        return TGT_ARRAY;
    case TYPE_FUNCTION:
    case TYPE_COCLASS:
    case TYPE_INTERFACE:
    case TYPE_MODULE:
    case TYPE_VOID:
    case TYPE_ALIAS:
    case TYPE_BITFIELD:
        break;
    }
    return TGT_INVALID;
}