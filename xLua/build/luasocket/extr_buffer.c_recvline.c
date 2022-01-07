
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int p_buffer ;
typedef int luaL_Buffer ;


 int IO_DONE ;
 int buffer_get (int ,char const**,size_t*) ;
 int buffer_skip (int ,size_t) ;
 int luaL_addchar (int *,char const) ;

__attribute__((used)) static int recvline(p_buffer buf, luaL_Buffer *b) {
    int err = IO_DONE;
    while (err == IO_DONE) {
        size_t count, pos; const char *data;
        err = buffer_get(buf, &data, &count);
        pos = 0;
        while (pos < count && data[pos] != '\n') {

            if (data[pos] != '\r') luaL_addchar(b, data[pos]);
            pos++;
        }
        if (pos < count) {
            buffer_skip(buf, pos+1);
            break;
        } else
            buffer_skip(buf, pos);
    }
    return err;
}
