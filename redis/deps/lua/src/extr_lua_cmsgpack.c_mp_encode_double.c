
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_buf ;
typedef int lua_State ;
typedef int f ;
typedef int d ;


 int assert (int) ;
 int memcpy (unsigned char*,...) ;
 int memrevifle (unsigned char*,int) ;
 int mp_buf_append (int *,int *,unsigned char*,int) ;

void mp_encode_double(lua_State *L, mp_buf *buf, double d) {
    unsigned char b[9];
    float f = d;

    assert(sizeof(f) == 4 && sizeof(d) == 8);
    if (d == (double)f) {
        b[0] = 0xca;
        memcpy(b+1,&f,4);
        memrevifle(b+1,4);
        mp_buf_append(L,buf,b,5);
    } else if (sizeof(d) == 8) {
        b[0] = 0xcb;
        memcpy(b+1,&d,8);
        memrevifle(b+1,8);
        mp_buf_append(L,buf,b,9);
    }
}
