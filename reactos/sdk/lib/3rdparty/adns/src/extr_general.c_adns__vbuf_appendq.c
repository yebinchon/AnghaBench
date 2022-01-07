
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ used; scalar_t__ buf; } ;
typedef TYPE_1__ vbuf ;
typedef int byte ;


 int memcpy (scalar_t__,int const*,size_t) ;

void adns__vbuf_appendq(vbuf *vb, const byte *data, int len) {
  memcpy(vb->buf+vb->used,data, (size_t) len);
  vb->used+= len;
}
