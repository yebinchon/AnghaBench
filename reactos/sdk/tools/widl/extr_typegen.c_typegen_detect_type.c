
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;
typedef enum typegen_type { ____Placeholder_typegen_type } typegen_type ;
typedef int attr_list_t ;


 int ATTR_CONTEXTHANDLE ;
 int ATTR_IIDIS ;
 int ATTR_RANGE ;
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
 scalar_t__ is_aliaschain_attr (int const*,int ) ;
 int is_attr (int const*,int ) ;
 scalar_t__ is_string_type (int const*,int const*) ;
 scalar_t__ is_user_type (int const*) ;
 int type_get_type (int const*) ;
 int const* type_pointer_get_ref (int const*) ;

enum typegen_type typegen_detect_type(const type_t *type, const attr_list_t *attrs, unsigned int flags)
{
    if (is_user_type(type))
        return TGT_USER_TYPE;

    if (is_aliaschain_attr(type, ATTR_CONTEXTHANDLE))
        return TGT_CTXT_HANDLE;

    if (!(flags & TDT_IGNORE_STRINGS) && is_string_type(attrs, type))
        return TGT_STRING;

    switch (type_get_type(type))
    {
    case 139:
        if (!(flags & TDT_IGNORE_RANGES) &&
            (is_attr(attrs, ATTR_RANGE) || is_aliaschain_attr(type, ATTR_RANGE)))
            return TGT_RANGE;
        return TGT_BASIC;
    case 135:
        if (!(flags & TDT_IGNORE_RANGES) &&
            (is_attr(attrs, ATTR_RANGE) || is_aliaschain_attr(type, ATTR_RANGE)))
            return TGT_RANGE;
        return TGT_ENUM;
    case 131:
        if (type_get_type(type_pointer_get_ref(type)) == 133 ||
            (type_get_type(type_pointer_get_ref(type)) == 128 && is_attr(attrs, ATTR_IIDIS)))
            return TGT_IFACE_POINTER;
        else if (is_aliaschain_attr(type_pointer_get_ref(type), ATTR_CONTEXTHANDLE))
            return TGT_CTXT_HANDLE_POINTER;
        else
            return TGT_POINTER;
    case 130:
        return TGT_STRUCT;
    case 136:
    case 129:
        return TGT_UNION;
    case 140:
        return TGT_ARRAY;
    case 134:
    case 137:
    case 133:
    case 132:
    case 128:
    case 141:
    case 138:
        break;
    }
    return TGT_INVALID;
}
