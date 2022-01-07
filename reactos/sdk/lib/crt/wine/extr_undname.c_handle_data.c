
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int num; } ;
struct parsed_symbol {int flags; int* current; void* result; TYPE_1__ stack; } ;
struct datatype_t {char* left; char* right; } ;
struct array {int dummy; } ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int UNDNAME_NAME_ONLY ;
 int UNDNAME_NO_ACCESS_SPECIFIERS ;
 int UNDNAME_NO_MEMBER_TYPE ;
 int demangle_datatype (struct parsed_symbol*,struct datatype_t*,struct array*,int ) ;
 char* get_class_name (struct parsed_symbol*) ;
 char* get_class_string (struct parsed_symbol*,int ) ;
 int get_modifier (struct parsed_symbol*,char const**,char const**) ;
 int str_array_init (struct array*) ;
 void* str_printf (struct parsed_symbol*,char*,char const*,...) ;

__attribute__((used)) static BOOL handle_data(struct parsed_symbol* sym)
{
    const char* access = ((void*)0);
    const char* member_type = ((void*)0);
    const char* modifier = ((void*)0);
    const char* ptr_modif;
    struct datatype_t ct;
    char* name = ((void*)0);
    BOOL ret = FALSE;
    if (!(sym->flags & UNDNAME_NO_ACCESS_SPECIFIERS))
    {

        switch (*sym->current)
        {
        case '0': access = "private: "; break;
        case '1': access = "protected: "; break;
        case '2': access = "public: "; break;
        }
    }

    if (!(sym->flags & UNDNAME_NO_MEMBER_TYPE))
    {
        if (*sym->current >= '0' && *sym->current <= '2')
            member_type = "static ";
    }

    name = get_class_string(sym, 0);

    switch (*sym->current++)
    {
    case '0': case '1': case '2':
    case '3': case '4': case '5':
        {
            unsigned mark = sym->stack.num;
            struct array pmt;

            str_array_init(&pmt);

            if (!demangle_datatype(sym, &ct, &pmt, FALSE)) goto done;
            if (!get_modifier(sym, &modifier, &ptr_modif)) goto done;
            if (modifier && ptr_modif) modifier = str_printf(sym, "%s %s", modifier, ptr_modif);
            else if (!modifier) modifier = ptr_modif;
            sym->stack.num = mark;
        }
        break;
    case '6' :
    case '7' :
        ct.left = ct.right = ((void*)0);
        if (!get_modifier(sym, &modifier, &ptr_modif)) goto done;
        if (*sym->current != '@')
        {
            char* cls = ((void*)0);

            if (!(cls = get_class_name(sym)))
                goto done;
            ct.right = str_printf(sym, "{for `%s'}", cls);
        }
        break;
    case '8':
    case '9':
        modifier = ct.left = ct.right = ((void*)0);
        break;
    default: goto done;
    }
    if (sym->flags & UNDNAME_NAME_ONLY) ct.left = ct.right = modifier = ((void*)0);

    sym->result = str_printf(sym, "%s%s%s%s%s%s%s%s", access,
                             member_type, ct.left,
                             modifier && ct.left ? " " : ((void*)0), modifier,
                             modifier || ct.left ? " " : ((void*)0), name, ct.right);
    ret = TRUE;
done:
    return ret;
}
