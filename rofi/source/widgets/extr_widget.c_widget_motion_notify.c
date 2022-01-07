
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* motion_notify ) (TYPE_1__*,int ,int ) ;} ;
typedef TYPE_1__ widget ;
typedef int gint ;
typedef int gboolean ;


 int FALSE ;
 int stub1 (TYPE_1__*,int ,int ) ;

gboolean widget_motion_notify ( widget *wid, gint x, gint y )
{
    if ( wid && wid->motion_notify ) {
        wid->motion_notify ( wid, x, y );
    }

    return FALSE;
}
