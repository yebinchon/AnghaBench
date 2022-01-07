
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* ed; struct TYPE_4__* name; } ;
typedef TYPE_1__ Mode ;


 int g_free (TYPE_1__*) ;

__attribute__((used)) static void script_switcher_free ( Mode *sw )
{
    if ( sw == ((void*)0) ) {
        return;
    }
    g_free ( sw->name );
    g_free ( sw->ed );
    g_free ( sw );
}
