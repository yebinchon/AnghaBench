
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int size; scalar_t__* buf; } ;
typedef TYPE_1__ wstrbuf_t ;
typedef int WCHAR ;
typedef int LPCWSTR ;


 scalar_t__* heap_realloc (scalar_t__*,int) ;
 int memcpy (scalar_t__*,int ,int) ;

__attribute__((used)) static void wstrbuf_append_len(wstrbuf_t *buf, LPCWSTR str, int len)
{
    if(buf->len+len >= buf->size) {
        buf->size = 2*buf->size+len;
        buf->buf = heap_realloc(buf->buf, buf->size * sizeof(WCHAR));
    }

    memcpy(buf->buf+buf->len, str, len*sizeof(WCHAR));
    buf->len += len;
    buf->buf[buf->len] = 0;
}
