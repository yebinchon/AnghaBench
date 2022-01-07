
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parsed_symbol {char* current; int flags; } ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int UNDNAME_NO_LEADING_UNDERSCORES ;
 int UNDNAME_NO_MS_KEYWORDS ;

__attribute__((used)) static BOOL get_modifier(struct parsed_symbol *sym, const char **ret, const char **ptr_modif)
{
    *ptr_modif = ((void*)0);
    if (*sym->current == 'E')
    {
        if (!(sym->flags & UNDNAME_NO_MS_KEYWORDS))
        {
            *ptr_modif = "__ptr64";
            if (sym->flags & UNDNAME_NO_LEADING_UNDERSCORES)
                *ptr_modif = *ptr_modif + 2;
        }
        sym->current++;
    }
    switch (*sym->current++)
    {
    case 'A': *ret = ((void*)0); break;
    case 'B': *ret = "const"; break;
    case 'C': *ret = "volatile"; break;
    case 'D': *ret = "const volatile"; break;
    default: return FALSE;
    }
    return TRUE;
}
