
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int p_buffer ;
typedef int luaL_Buffer ;


 int IO_CLOSED ;
 int IO_DONE ;
 int buffer_get (int ,char const**,size_t*) ;
 int buffer_skip (int ,size_t) ;
 int luaL_addlstring (int *,char const*,size_t) ;

__attribute__((used)) static int recvall(p_buffer buf, luaL_Buffer *b) {
    int err = IO_DONE;
    size_t total = 0;
    while (err == IO_DONE) {
        const char *data; size_t count;
        err = buffer_get(buf, &data, &count);
        total += count;
        luaL_addlstring(b, data, count);
        buffer_skip(buf, count);
    }
    if (err == IO_CLOSED) {
        if (total > 0) return IO_DONE;
        else return IO_CLOSED;
    } else return err;
}
