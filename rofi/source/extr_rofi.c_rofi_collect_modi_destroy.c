
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * module; } ;
typedef int GModule ;


 TYPE_1__** available_modi ;
 int g_free (TYPE_1__**) ;
 int g_module_close (int *) ;
 int mode_free (TYPE_1__**) ;
 unsigned int num_available_modi ;

__attribute__((used)) static void rofi_collect_modi_destroy ( void )
{
    for ( unsigned int i = 0; i < num_available_modi; i++ ) {
        if ( available_modi[i]->module ) {
            GModule *mod = available_modi[i]->module;
            available_modi[i] = ((void*)0);
            g_module_close ( mod );
        }
        if ( available_modi[i] ) {
            mode_free ( &( available_modi[i] ) );
        }
    }
    g_free ( available_modi );
    available_modi = ((void*)0);
    num_available_modi = 0;
}
