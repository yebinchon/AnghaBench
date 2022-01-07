
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int null_cursor; } ;
struct TYPE_6__ {TYPE_1__ xwin; } ;
typedef TYPE_2__ RDPCLIENT ;


 int ui_set_cursor (TYPE_2__*,int ) ;

void
ui_set_null_cursor(RDPCLIENT * This)
{
 ui_set_cursor(This, This->xwin.null_cursor);
}
