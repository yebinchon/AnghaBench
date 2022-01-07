
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int display; } ;
typedef TYPE_1__ RDPCLIENT ;


 int XBell (int ,int ) ;

void
ui_bell(RDPCLIENT * This)
{
 XBell(This->display, 0);
}
