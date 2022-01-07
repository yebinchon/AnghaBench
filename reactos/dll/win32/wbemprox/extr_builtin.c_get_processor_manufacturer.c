
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int do_cpuid (int ,unsigned int*) ;
 int regs_to_str (unsigned int*,int,int *) ;

__attribute__((used)) static void get_processor_manufacturer( WCHAR *manufacturer )
{
    unsigned int tmp, regs[4] = {0, 0, 0, 0};

    do_cpuid( 0, regs );
    tmp = regs[2];
    regs[2] = regs[3];
    regs[3] = tmp;

    regs_to_str( regs + 1, 12, manufacturer );
}
