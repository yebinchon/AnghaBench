
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {int dummy; } ;
typedef scalar_t__ ULONG_PTR ;


 int DbgPrint (char*,scalar_t__) ;
 int KdbSymPrintAddress (void*) ;

__attribute__((used)) static void
KdbpPrintAddressInCode(ULONG_PTR Addr, struct disassemble_info * Ignored)
{
  if (!KdbSymPrintAddress((void*)Addr))
    {
      DbgPrint("<%p>", Addr);
    }
}
