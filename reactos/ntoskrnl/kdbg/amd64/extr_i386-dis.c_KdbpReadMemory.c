
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {int dummy; } ;
typedef scalar_t__ ULONG_PTR ;


 int KdbpSafeReadMemory (unsigned char*,void*,unsigned int) ;

__attribute__((used)) static int
KdbpReadMemory(ULONG_PTR Addr, unsigned char* Data, unsigned int Length,
        struct disassemble_info * Ignored)
{
  return KdbpSafeReadMemory(Data, (void *)Addr, Length);
}
