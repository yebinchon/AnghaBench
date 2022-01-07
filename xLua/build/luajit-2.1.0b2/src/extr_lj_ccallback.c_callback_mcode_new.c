
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* mcode; } ;
struct TYPE_5__ {int g; TYPE_1__ cb; int L; } ;
typedef int DWORD ;
typedef TYPE_2__ CTState ;


 scalar_t__ CALLBACK_MAX_SLOT ;
 int CALLBACK_MCODE_SIZE ;
 int LJ_ERR_FFI_CBACKOV ;
 int MAP_ANONYMOUS ;
 void* MAP_FAILED ;
 int MAP_PRIVATE ;
 int MEM_COMMIT ;
 int MEM_RESERVE ;
 int PAGE_EXECUTE_READ ;
 int PAGE_READWRITE ;
 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;
 void* VirtualAlloc (int *,size_t,int,int ) ;
 int VirtualProtect (void*,size_t,int ,int *) ;
 int callback_mcode_init (int ,void*) ;
 int lj_err_caller (int ,int ) ;
 int lj_mcode_sync (void*,char*) ;
 void* lj_mem_new (int ,size_t) ;
 void* mmap (int *,size_t,int,int,int,int ) ;
 int mprotect (void*,size_t,int) ;

__attribute__((used)) static void callback_mcode_new(CTState *cts)
{
  size_t sz = (size_t)CALLBACK_MCODE_SIZE;
  void *p;
  if (CALLBACK_MAX_SLOT == 0)
    lj_err_caller(cts->L, LJ_ERR_FFI_CBACKOV);
  p = lj_mem_new(cts->L, sz);

  cts->cb.mcode = p;
  callback_mcode_init(cts->g, p);
  lj_mcode_sync(p, (char *)p + sz);
}
