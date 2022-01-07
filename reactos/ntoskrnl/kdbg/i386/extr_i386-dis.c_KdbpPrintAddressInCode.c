
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {int dummy; } ;


 int DbgPrint (char*,unsigned int) ;
 int KdbSymPrintAddress (void*,int *) ;

__attribute__((used)) static void
KdbpPrintAddressInCode(unsigned int Addr, struct disassemble_info * Ignored)
{
    if (!KdbSymPrintAddress((void*)Addr, ((void*)0)))
    {
      DbgPrint("<%08x>", Addr);
    }
}
