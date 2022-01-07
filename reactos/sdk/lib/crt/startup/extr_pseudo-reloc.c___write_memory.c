
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int b ;
struct TYPE_3__ {scalar_t__ Protect; int RegionSize; int BaseAddress; } ;
typedef TYPE_1__ MEMORY_BASIC_INFORMATION ;
typedef int LPVOID ;
typedef scalar_t__ DWORD ;


 scalar_t__ PAGE_EXECUTE_READWRITE ;
 scalar_t__ PAGE_READWRITE ;
 int VirtualProtect (int ,int ,scalar_t__,scalar_t__*) ;
 int VirtualQuery (void*,TYPE_1__*,int) ;
 int __report_error (char*,int,void*) ;
 int mark_section_writable (int ) ;
 int memcpy (void*,void const*,size_t) ;

__attribute__((used)) static void
__write_memory (void *addr, const void *src, size_t len)
{
  MEMORY_BASIC_INFORMATION b;
  DWORD oldprot;
  int call_unprotect = 0;

  if (!len)
    return;





  if (!VirtualQuery (addr, &b, sizeof(b)))
    {
      __report_error ("  VirtualQuery failed for %d bytes at address %p",
        (int) sizeof(b), addr);
    }


  if (b.Protect != PAGE_EXECUTE_READWRITE && b.Protect != PAGE_READWRITE)
    {
      call_unprotect = 1;
      VirtualProtect (b.BaseAddress, b.RegionSize, PAGE_EXECUTE_READWRITE,
        &oldprot);
    }


  memcpy (addr, src, len);

  if (call_unprotect && b.Protect != PAGE_EXECUTE_READWRITE && b.Protect != PAGE_READWRITE)
    VirtualProtect (b.BaseAddress, b.RegionSize, oldprot, &oldprot);
}
