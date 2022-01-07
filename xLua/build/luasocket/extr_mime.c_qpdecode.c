
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int luaL_Buffer ;
typedef int UC ;


 int luaL_addchar (int *,int) ;
 int luaL_addlstring (int *,char*,int) ;
 int* qpunbase ;

__attribute__((used)) static size_t qpdecode(UC c, UC *input, size_t size, luaL_Buffer *buffer) {
    int d;
    input[size++] = c;

    switch (input[0]) {

        case '=':
            if (size < 3) return size;

            if (input[1] == '\r' && input[2] == '\n') return 0;

            c = qpunbase[input[1]]; d = qpunbase[input[2]];

            if (c > 15 || d > 15) luaL_addlstring(buffer, (char *)input, 3);
            else luaL_addchar(buffer, (char) ((c << 4) + d));
            return 0;
        case '\r':
            if (size < 2) return size;
            if (input[1] == '\n') luaL_addlstring(buffer, (char *)input, 2);
            return 0;
        default:
            if (input[0] == '\t' || (input[0] > 31 && input[0] < 127))
                luaL_addchar(buffer, input[0]);
            return 0;
    }
}
