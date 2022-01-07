
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int used; int avail; void* buf; } ;
typedef TYPE_1__ vbuf ;
typedef int byte ;


 int adns__vbuf_appendq (TYPE_1__*,int const*,int) ;
 void* realloc (void*,size_t) ;

int adns__vbuf_append(vbuf *vb, const byte *data, int len) {
  int newlen;
  void *nb;

  newlen= vb->used+len;
  if (vb->avail < newlen) {
    if (newlen<20) newlen= 20;
    newlen <<= 1;
    nb= realloc(vb->buf,(size_t) newlen);
    if (!nb) { newlen= vb->used+len; nb= realloc(vb->buf, (size_t) newlen); }
    if (!nb) return 0;
    vb->buf= nb;
    vb->avail= newlen;
  }
  adns__vbuf_appendq(vb,data,len);
  return 1;
}
