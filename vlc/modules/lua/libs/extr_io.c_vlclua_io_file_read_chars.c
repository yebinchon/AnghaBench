
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;
typedef int FILE ;


 size_t LUAL_BUFFERSIZE ;
 size_t fread (char*,int,size_t,int *) ;
 int luaL_addsize (int *,size_t) ;
 int luaL_buffinit (int *,int *) ;
 char* luaL_prepbuffer (int *) ;
 int luaL_pushresult (int *) ;
 scalar_t__ lua_objlen (int *,int) ;

__attribute__((used)) static int vlclua_io_file_read_chars( lua_State *L, size_t i_len, FILE* p_file )
{
    size_t i_toread = LUAL_BUFFERSIZE;
    size_t i_read;
    luaL_Buffer b;
    luaL_buffinit( L, &b );
    do {
        char *p = luaL_prepbuffer(&b);
        if (i_toread > i_len)
            i_toread = i_len;
        i_read = fread(p, sizeof(char), i_toread, p_file);
        luaL_addsize(&b, i_read);
        i_len -= i_read;
    } while (i_len > 0 && i_read == i_toread);
    luaL_pushresult(&b);
    return (i_len == 0 || lua_objlen(L, -1) > 0);
}
