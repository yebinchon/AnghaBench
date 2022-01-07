
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clientHead; } ;


 int rfbCloseClient (int ) ;
 TYPE_1__* server ;

void
ui_destroy_window()
{
 rfbCloseClient(server->clientHead);
}
