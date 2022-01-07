
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi ;


 int get16le (int *) ;
 int get8 (int *) ;
 int get8u (int *) ;
 int skip (int *,int) ;
 int stbi_rewind (int *) ;

__attribute__((used)) static int tga_info(stbi *s, int *x, int *y, int *comp)
{
    int tga_w, tga_h, tga_comp;
    int sz;
    get8u(s);
    sz = get8u(s);
    if( sz > 1 ) {
        stbi_rewind(s);
        return 0;
    }
    sz = get8u(s);

    if ((sz != 1) && (sz != 2) && (sz != 3) && (sz != 9) && (sz != 10) && (sz != 11)) return 0;
    skip(s,9);
    tga_w = get16le(s);
    if( tga_w < 1 ) {
        stbi_rewind(s);
        return 0;
    }
    tga_h = get16le(s);
    if( tga_h < 1 ) {
        stbi_rewind(s);
        return 0;
    }
    sz = get8(s);

    if ((sz != 8) && (sz != 16) && (sz != 24) && (sz != 32)) {
        stbi_rewind(s);
        return 0;
    }
    tga_comp = sz;
    if (x) *x = tga_w;
    if (y) *y = tga_h;
    if (comp) *comp = tga_comp / 8;
    return 1;
}
