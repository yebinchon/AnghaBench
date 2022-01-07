
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct define {scalar_t__ value; int name; struct define* next; } ;


 struct define* cmdline_defines ;
 int pp_add_define (int ,scalar_t__) ;

__attribute__((used)) static void add_cmdline_defines(void)
{
    struct define *def;

    for (def = cmdline_defines; def; def = def->next)
    {
        if (def->value) pp_add_define( def->name, def->value );
    }
}
