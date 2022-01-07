
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACMDRVSTREAMINSTANCE ;
typedef scalar_t__* LPDWORD ;
typedef scalar_t__ DWORD ;


 scalar_t__ min (scalar_t__,scalar_t__) ;
 int ulaw2alaw (int ) ;

__attribute__((used)) static void cvtXXulawalawK(PACMDRVSTREAMINSTANCE adsi,
                           const unsigned char* src, LPDWORD srcsize,
                           unsigned char* dst, LPDWORD dstsize)
{
    DWORD len = min(*srcsize, *dstsize);
    DWORD i;

    *srcsize = len;
    *dstsize = len;

    for (i = 0; i < len; i++)
        *dst++ = ulaw2alaw(*src++);
}
