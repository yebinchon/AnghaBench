
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; scalar_t__* buf; scalar_t__ len; } ;
typedef TYPE_1__ wstrbuf_t ;
typedef int WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__* heap_alloc (int) ;

__attribute__((used)) static inline BOOL wstrbuf_init(wstrbuf_t *buf)
{
    buf->len = 0;
    buf->size = 16;
    buf->buf = heap_alloc(buf->size * sizeof(WCHAR));
    if (!buf->buf) return FALSE;
    *buf->buf = 0;
    return TRUE;
}
