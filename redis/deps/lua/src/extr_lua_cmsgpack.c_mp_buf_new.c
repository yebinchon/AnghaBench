
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ free; scalar_t__ len; int * b; } ;
typedef TYPE_1__ mp_buf ;
typedef int lua_State ;


 scalar_t__ mp_realloc (int *,int *,int ,int) ;

mp_buf *mp_buf_new(lua_State *L) {
    mp_buf *buf = ((void*)0);


    buf = (mp_buf*)mp_realloc(L, ((void*)0), 0, sizeof(*buf));

    buf->b = ((void*)0);
    buf->len = buf->free = 0;
    return buf;
}
