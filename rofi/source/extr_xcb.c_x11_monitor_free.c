
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* name; } ;
typedef TYPE_1__ workarea ;


 int g_free (TYPE_1__*) ;

__attribute__((used)) static void x11_monitor_free ( workarea *m )
{
    g_free ( m->name );
    g_free ( m );
}
