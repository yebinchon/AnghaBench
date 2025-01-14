
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int M24 (int ,int ) ;
 int R24 (unsigned char const*) ;
 int W24 (unsigned char*,int ) ;

__attribute__((used)) static void cvtSM2424C(const DWORD srcRate, const unsigned char *src, DWORD *nsrc,
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

            W24(dst, M24(R24(src), R24(src + 3))); dst += 3;
        }
        src += 6;
    }
}
