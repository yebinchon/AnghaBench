
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int M16 (int ,int ) ;
 int R16 (unsigned char const*) ;
 int W16 (unsigned char*,int ) ;

__attribute__((used)) static void cvtSM1616C(const DWORD srcRate, const unsigned char *src, DWORD *nsrc,
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

            W16(dst, M16(R16(src), R16(src + 2))); dst += 2;
        }
        src += 4;
    }
}
