
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int luaL_Buffer ;
typedef size_t UC ;





 int luaL_addchar (int *,size_t) ;
 int luaL_addstring (int *,char const*) ;
 int* qpclass ;
 int qpquote (size_t,int *) ;

__attribute__((used)) static size_t qpencode(UC c, UC *input, size_t size,
        const char *marker, luaL_Buffer *buffer)
{
    input[size++] = c;

    while (size > 0) {
        switch (qpclass[input[0]]) {

            case 130:
                if (size < 2) return size;
                if (input[1] == '\n') {
                    luaL_addstring(buffer, marker);
                    return 0;
                } else qpquote(input[0], buffer);
                break;

            case 129:
                if (size < 3) return size;

                if (input[1] == '\r' && input[2] == '\n') {
                    qpquote(input[0], buffer);
                    luaL_addstring(buffer, marker);
                    return 0;
                } else luaL_addchar(buffer, input[0]);
                break;

            case 128:
                qpquote(input[0], buffer);
                break;

            default:
                luaL_addchar(buffer, input[0]);
                break;
        }
        input[0] = input[1]; input[1] = input[2];
        size--;
    }
    return 0;
}
