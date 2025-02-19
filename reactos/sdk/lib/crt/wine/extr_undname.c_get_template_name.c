
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int num; } ;
struct TYPE_3__ {unsigned int num; unsigned int start; } ;
struct parsed_symbol {TYPE_2__ stack; TYPE_1__ names; } ;
struct array {int dummy; } ;


 char* FALSE ;
 char* get_args (struct parsed_symbol*,struct array*,char*,char,char) ;
 char* get_literal_string (struct parsed_symbol*) ;
 int str_array_init (struct array*) ;
 char* str_printf (struct parsed_symbol*,char*,char*,char*) ;

__attribute__((used)) static char* get_template_name(struct parsed_symbol* sym)
{
    char *name, *args;
    unsigned num_mark = sym->names.num;
    unsigned start_mark = sym->names.start;
    unsigned stack_mark = sym->stack.num;
    struct array array_pmt;

    sym->names.start = sym->names.num;
    if (!(name = get_literal_string(sym))) {
        sym->names.start = start_mark;
        return FALSE;
    }
    str_array_init(&array_pmt);
    args = get_args(sym, &array_pmt, FALSE, '<', '>');
    if (args != ((void*)0))
        name = str_printf(sym, "%s%s", name, args);
    sym->names.num = num_mark;
    sym->names.start = start_mark;
    sym->stack.num = stack_mark;
    return name;
}
