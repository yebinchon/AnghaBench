
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ vncBuffer ;
typedef int uint8 ;
typedef int HBITMAP ;


 int memcpy (int ,int *,int) ;
 TYPE_1__* vncNewBuffer (int,int,int) ;

HBITMAP
ui_create_bitmap(int width, int height, uint8 * data)
{
 vncBuffer *buf;

 buf = vncNewBuffer(width, height, 8);
 memcpy(buf->data, data, width * height);

 return (HBITMAP) buf;
}
