
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int avail; void* buf; } ;
typedef TYPE_1__ vbuf ;


 void* realloc (void*,size_t) ;

int adns__vbuf_ensure(vbuf *vb, int want) {
  void *nb;

  if (vb->avail >= want) return 1;
  nb= realloc(vb->buf, (size_t) want); if (!nb) return 0;
  vb->buf= nb;
  vb->avail= want;
  return 1;
}
