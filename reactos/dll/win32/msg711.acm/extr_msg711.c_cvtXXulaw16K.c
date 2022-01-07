
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACMDRVSTREAMINSTANCE ;
typedef int* LPDWORD ;
typedef int DWORD ;


 int W16 (unsigned char*,short) ;
 int min (int,int) ;
 short ulaw2linear (int ) ;

__attribute__((used)) static void cvtXXulaw16K(PACMDRVSTREAMINSTANCE adsi,
                         const unsigned char* src, LPDWORD srcsize,
                         unsigned char* dst, LPDWORD dstsize)
{
    DWORD len = min(*srcsize, *dstsize / 2);
    DWORD i;
    short w;

    *srcsize = len;
    *dstsize = len * 2;
    for (i = 0; i < len; i++)
    {
        w = ulaw2linear(*src++);
        W16(dst, w); dst += 2;
    }
}
