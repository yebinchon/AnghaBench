
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int p_buffer ;
typedef int luaL_Buffer ;


 int IO_DONE ;
 size_t MIN (size_t,size_t) ;
 int buffer_get (int ,char const**,size_t*) ;
 int buffer_skip (int ,size_t) ;
 int luaL_addlstring (int *,char const*,size_t) ;

__attribute__((used)) static int recvraw(p_buffer buf, size_t wanted, luaL_Buffer *b) {
    int err = IO_DONE;
    size_t total = 0;
    while (err == IO_DONE) {
        size_t count; const char *data;
        err = buffer_get(buf, &data, &count);
        count = MIN(count, wanted - total);
        luaL_addlstring(b, data, count);
        buffer_skip(buf, count);
        total += count;
        if (total >= wanted) break;
    }
    return err;
}
