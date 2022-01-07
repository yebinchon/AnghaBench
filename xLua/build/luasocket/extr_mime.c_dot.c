
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int luaL_Buffer ;


 int luaL_addchar (int *,char) ;

__attribute__((used)) static size_t dot(int c, size_t state, luaL_Buffer *buffer)
{
    luaL_addchar(buffer, (char) c);
    switch (c) {
        case '\r':
            return 1;
        case '\n':
            return (state == 1)? 2: 0;
        case '.':
            if (state == 2)
                luaL_addchar(buffer, '.');
        default:
            return 0;
    }
}
