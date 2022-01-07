
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct define {int name; scalar_t__ value; struct define* next; } ;


 struct define* cmdline_defines ;
 int pp_del_define (int ) ;

__attribute__((used)) static void del_cmdline_defines(void)
{
    struct define *def;

    for (def = cmdline_defines; def; def = def->next)
    {
        if (def->value) pp_del_define( def->name );
    }
}
