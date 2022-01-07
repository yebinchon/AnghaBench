
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t free; int len; unsigned char* b; } ;
typedef TYPE_1__ mp_buf ;
typedef int lua_State ;


 int memcpy (unsigned char*,unsigned char const*,size_t) ;
 scalar_t__ mp_realloc (int *,unsigned char*,size_t,size_t) ;

void mp_buf_append(lua_State *L, mp_buf *buf, const unsigned char *s, size_t len) {
    if (buf->free < len) {
        size_t newsize = (buf->len+len)*2;

        buf->b = (unsigned char*)mp_realloc(L, buf->b, buf->len + buf->free, newsize);
        buf->free = newsize - buf->len;
    }
    memcpy(buf->b+buf->len,s,len);
    buf->len += len;
    buf->free -= len;
}
