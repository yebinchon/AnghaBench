
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static int CodePointToUTF8( uint32_t ucs4, char *p )
{

    if( ucs4 <= 0x7F )
    {
        p[0] = ucs4;
        return 1;
    }
    else if( ucs4 <= 0x7FF )
    {
        p[0] = 0xC0 | (ucs4 >> 6);
        p[1] = 0x80 | (ucs4 & 0x3F);
        return 2;
    }
    else if( ucs4 <= 0xFFFF )
    {
        p[0] = 0xE0 | (ucs4 >> 12);
        p[1] = 0x80 | ((ucs4 >> 6) & 0x3F);
        p[2] = 0x80 | (ucs4 & 0x3F);
        return 3;
    }
    else if( ucs4 <= 0x1FFFFF )
    {
        p[0] = 0xF0 | (ucs4 >> 18);
        p[1] = 0x80 | ((ucs4 >> 12) & 0x3F);
        p[2] = 0x80 | ((ucs4 >> 6) & 0x3F);
        p[3] = 0x80 | (ucs4 & 0x3F);
        return 4;
    }
    else if( ucs4 <= 0x3FFFFFF )
    {
        p[0] = 0xF8 | (ucs4 >> 24);
        p[1] = 0x80 | ((ucs4 >> 18) & 0x3F);
        p[2] = 0x80 | ((ucs4 >> 12) & 0x3F);
        p[3] = 0x80 | ((ucs4 >> 6) & 0x3F);
        p[4] = 0x80 | (ucs4 & 0x3F);
        return 5;
    }
    else
    {
        p[0] = 0xFC | (ucs4 >> 30);
        p[1] = 0x80 | ((ucs4 >> 24) & 0x3F);
        p[2] = 0x80 | ((ucs4 >> 18) & 0x3F);
        p[3] = 0x80 | ((ucs4 >> 12) & 0x3F);
        p[4] = 0x80 | ((ucs4 >> 6) & 0x3F);
        p[5] = 0x80 | (ucs4 & 0x3F);
        return 6;
    }
}
