
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* free ) (TYPE_1__*) ;scalar_t__ name; } ;
typedef TYPE_1__ widget ;


 int g_free (scalar_t__) ;
 int stub1 (TYPE_1__*) ;

void widget_free ( widget *wid )
{
    if ( wid ) {
        if ( wid->name ) {
            g_free ( wid->name );
        }
        if ( wid->free ) {
            wid->free ( wid );
        }
        return;
    }
}
