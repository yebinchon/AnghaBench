
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int UINT16 ;


 int do_cpuid (int,unsigned int*) ;

__attribute__((used)) static UINT16 get_processor_revision(void)
{
    unsigned int regs[4] = {0, 0, 0, 0};
    do_cpuid( 1, regs );
    return regs[0];
}
