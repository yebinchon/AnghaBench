
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BYTE ;


 int DISPLAY (char*,scalar_t__ const,...) ;

__attribute__((used)) static size_t findDiff(const void* buf1, const void* buf2, size_t max)
{
    const BYTE* b1 = (const BYTE*)buf1;
    const BYTE* b2 = (const BYTE*)buf2;
    size_t u;
    for (u=0; u<max; u++) {
        if (b1[u] != b2[u]) break;
    }
    if (u==max) {
        DISPLAY("=> No difference detected within %u bytes \n", (unsigned)max);
        return u;
    }
    DISPLAY("Error at position %u / %u \n", (unsigned)u, (unsigned)max);
    if (u>=3)
        DISPLAY(" %02X %02X %02X ",
                b1[u-3], b1[u-2], b1[u-1]);
    DISPLAY(" :%02X:  %02X %02X %02X %02X %02X \n",
            b1[u], b1[u+1], b1[u+2], b1[u+3], b1[u+4], b1[u+5]);
    if (u>=3)
        DISPLAY(" %02X %02X %02X ",
                b2[u-3], b2[u-2], b2[u-1]);
    DISPLAY(" :%02X:  %02X %02X %02X %02X %02X \n",
            b2[u], b2[u+1], b2[u+2], b2[u+3], b2[u+4], b2[u+5]);
    return u;
}
