
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; int free; struct TYPE_4__* b; } ;
typedef TYPE_1__ mp_buf ;
typedef int lua_State ;


 int mp_realloc (int *,TYPE_1__*,int,int ) ;

void mp_buf_free(lua_State *L, mp_buf *buf) {
    mp_realloc(L, buf->b, buf->len + buf->free, 0);
    mp_realloc(L, buf, sizeof(*buf), 0);
}
