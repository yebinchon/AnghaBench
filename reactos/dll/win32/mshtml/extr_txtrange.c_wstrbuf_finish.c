
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ wstrbuf_t ;


 int heap_free (int ) ;

__attribute__((used)) static inline void wstrbuf_finish(wstrbuf_t *buf)
{
    heap_free(buf->buf);
}
