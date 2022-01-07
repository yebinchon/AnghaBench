
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int rfbScreenInfoPtr ;
struct TYPE_4__ {int * bytes; } ;
struct TYPE_5__ {int count; TYPE_1__ data; int is16; } ;
typedef TYPE_2__ rfbColourMap ;


 int FALSE ;
 scalar_t__ xmalloc (int) ;

rfbColourMap *
vncNewColourMap(rfbScreenInfoPtr s, int n)
{
 rfbColourMap *m = (rfbColourMap *) xmalloc(sizeof(rfbColourMap));
 m->is16 = FALSE;
 m->count = n;
 m->data.bytes = (uint8_t *) xmalloc(n * 3);
 return m;
}
