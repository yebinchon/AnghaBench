
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vncBuffer ;
typedef scalar_t__ HBITMAP ;


 int vncDeleteBuffer (int *) ;

void
ui_destroy_bitmap(HBITMAP bmp)
{
 vncDeleteBuffer((vncBuffer *) bmp);
}
