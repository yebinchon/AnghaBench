
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ll ;
typedef int ULONGLONG ;


 int sprintf (char*,char*,unsigned long,...) ;

__attribute__((used)) static const char *dbgstr_longlong(ULONGLONG ll)
{
    static char buf[16][64];
    static int idx;

    idx &= 0x0f;

    if (sizeof(ll) > sizeof(unsigned long) && ll >> 32)
        sprintf(buf[idx], "0x%lx%08lx", (unsigned long)(ll >> 32), (unsigned long)ll);
    else
        sprintf(buf[idx], "0x%08lx", (unsigned long)ll);

    return buf[idx++];
}
