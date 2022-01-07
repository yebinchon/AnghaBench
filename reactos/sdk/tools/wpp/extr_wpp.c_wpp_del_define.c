
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct define {int * value; int name; struct define* next; } ;


 struct define* cmdline_defines ;
 int free (int *) ;
 int strcmp (int ,char const*) ;

void wpp_del_define( const char *name )
{
    struct define *def;

    for (def = cmdline_defines; def; def = def->next)
    {
        if (!strcmp( def->name, name ))
        {
            free( def->value );
            def->value = ((void*)0);
            return;
        }
    }
}
