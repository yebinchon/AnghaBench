
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int do_cpuid (int,unsigned int*) ;
 int sprintfW (char*,char const*,unsigned int,unsigned int) ;

__attribute__((used)) static void get_processor_version( WCHAR *version )
{
    static const WCHAR fmtW[] =
        {'M','o','d','e','l',' ','%','u',',',' ','S','t','e','p','p','i','n','g',' ','%','u',0};
    unsigned int regs[4] = {0, 0, 0, 0};

    do_cpuid( 1, regs );
    sprintfW( version, fmtW, (regs[0] & (15 << 4)) >> 4, regs[0] & 15 );
}
