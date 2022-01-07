
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vncPixel ;
struct TYPE_5__ {int linew; scalar_t__ data; TYPE_1__* format; } ;
typedef TYPE_2__ vncBuffer ;
typedef int uint8_t ;
struct TYPE_4__ {int bitsPerPixel; } ;



vncPixel
vncGetPixel(vncBuffer * b, int x, int y)
{
 unsigned long offset = (x + (y * (b->linew))) * (b->format->bitsPerPixel >> 3);
 return ((uint8_t *) (b->data))[offset];
}
