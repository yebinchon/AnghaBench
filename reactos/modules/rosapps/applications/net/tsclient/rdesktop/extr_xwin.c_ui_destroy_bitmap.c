
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int display; } ;
typedef TYPE_1__ RDPCLIENT ;
typedef int Pixmap ;
typedef scalar_t__ HBITMAP ;


 int XFreePixmap (int ,int ) ;

void
ui_destroy_bitmap(RDPCLIENT * This, HBITMAP bmp)
{
 XFreePixmap(This->display, (Pixmap) bmp);
}
