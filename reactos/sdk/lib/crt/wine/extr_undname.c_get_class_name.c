
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int num; } ;
struct parsed_symbol {TYPE_1__ stack; } ;


 scalar_t__ get_class (struct parsed_symbol*) ;
 char* get_class_string (struct parsed_symbol*,unsigned int) ;

__attribute__((used)) static char* get_class_name(struct parsed_symbol* sym)
{
    unsigned mark = sym->stack.num;
    char* s = ((void*)0);

    if (get_class(sym))
        s = get_class_string(sym, mark);
    sym->stack.num = mark;
    return s;
}
