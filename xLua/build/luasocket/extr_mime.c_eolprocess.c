
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int luaL_Buffer ;


 scalar_t__ eolcandidate (int) ;
 int luaL_addchar (int *,char) ;
 int luaL_addstring (int *,char const*) ;

__attribute__((used)) static int eolprocess(int c, int last, const char *marker,
        luaL_Buffer *buffer)
{
    if (eolcandidate(c)) {
        if (eolcandidate(last)) {
            if (c == last) luaL_addstring(buffer, marker);
            return 0;
        } else {
            luaL_addstring(buffer, marker);
            return c;
        }
    } else {
        luaL_addchar(buffer, (char) c);
        return 0;
    }
}
