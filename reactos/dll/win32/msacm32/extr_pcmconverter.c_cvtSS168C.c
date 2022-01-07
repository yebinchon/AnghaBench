
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 void* C168 (int ) ;
 int R16 (unsigned char const*) ;

__attribute__((used)) static void cvtSS168C(const DWORD srcRate, const unsigned char *src, DWORD *nsrc,
                      const DWORD dstRate, unsigned char *dst, DWORD *ndst)
{
    DWORD error = srcRate / 2;
    DWORD maxSrc = *nsrc, maxDst = *ndst;
    *ndst = 0;
    for (*nsrc = 0; *nsrc < maxSrc; (*nsrc)++) {
        error += dstRate;
        while (error > srcRate) {
            if (*ndst == maxDst)
                return;
            (*ndst)++;
            error -= srcRate;

            *dst++ = C168(R16(src));
            *dst++ = C168(R16(src + 2));
        }
        src += 4;
    }
}
