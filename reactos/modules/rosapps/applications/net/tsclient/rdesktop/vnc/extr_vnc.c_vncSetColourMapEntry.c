
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* vncPixel ;
struct TYPE_4__ {void** bytes; } ;
struct TYPE_5__ {int count; TYPE_1__ data; } ;
typedef TYPE_2__ rfbColourMap ;



void
vncSetColourMapEntry(rfbColourMap * m, int i, vncPixel r, vncPixel g, vncPixel b)
{
 if (i < m->count)
 {
  m->data.bytes[3 * i + 0] = r;
  m->data.bytes[3 * i + 1] = g;
  m->data.bytes[3 * i + 2] = b;
 }
}
