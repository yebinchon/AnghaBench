
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bytes; } ;
struct TYPE_5__ {scalar_t__ count; TYPE_1__ data; } ;
typedef TYPE_2__ rfbColourMap ;


 int free (scalar_t__) ;

void
vncDeleteColourMap(rfbColourMap * m)
{
 if (m->data.bytes)
  free(m->data.bytes);
 m->count = 0;
}
