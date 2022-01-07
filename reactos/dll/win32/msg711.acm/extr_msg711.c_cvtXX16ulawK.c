
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACMDRVSTREAMINSTANCE ;
typedef int* LPDWORD ;
typedef int DWORD ;


 int R16 (unsigned char const*) ;
 int linear2ulaw (int ) ;
 int min (int,int) ;

__attribute__((used)) static void cvtXX16ulawK(PACMDRVSTREAMINSTANCE adsi,
                         const unsigned char* src, LPDWORD srcsize,
                         unsigned char* dst, LPDWORD dstsize)
{
    DWORD len = min(*srcsize / 2, *dstsize);
    DWORD i;

    *srcsize = len * 2;
    *dstsize = len;
    for (i = 0; i < len; i++)
    {
        *dst++ = linear2ulaw(R16(src)); src += 2;
    }
}
