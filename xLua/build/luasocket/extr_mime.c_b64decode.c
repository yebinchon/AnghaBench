
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int luaL_Buffer ;
typedef size_t UC ;


 int* b64unbase ;
 int luaL_addlstring (int *,char*,int) ;

__attribute__((used)) static size_t b64decode(UC c, UC *input, size_t size,
        luaL_Buffer *buffer)
{

    if (b64unbase[c] > 64) return size;
    input[size++] = c;

    if (size == 4) {
        UC decoded[3];
        int valid, value = 0;
        value = b64unbase[input[0]]; value <<= 6;
        value |= b64unbase[input[1]]; value <<= 6;
        value |= b64unbase[input[2]]; value <<= 6;
        value |= b64unbase[input[3]];
        decoded[2] = (UC) (value & 0xff); value >>= 8;
        decoded[1] = (UC) (value & 0xff); value >>= 8;
        decoded[0] = (UC) value;

        valid = (input[2] == '=') ? 1 : (input[3] == '=') ? 2 : 3;
        luaL_addlstring(buffer, (char *) decoded, valid);
        return 0;

    } else return size;
}
