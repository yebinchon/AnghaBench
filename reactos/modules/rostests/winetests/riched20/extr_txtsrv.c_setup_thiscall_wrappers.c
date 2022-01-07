
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pop_eax; int pop_ecx; int push_eax; int* mov_vtable_eax; int* jmp_eax; int vtablefunc_offset; } ;
struct TYPE_5__ {int pop_eax; int push_ecx; int push_eax; int jmp_func; int func; } ;
typedef TYPE_1__ THISCALL_TO_STDCALL_THUNK ;
typedef TYPE_2__ STDCALL_TO_THISCALL_THUNK ;
typedef int ITextServicesVtbl ;
typedef int ITextHostVtbl ;


 int MEM_COMMIT ;
 int PAGE_EXECUTE_READWRITE ;
 TYPE_1__* VirtualAlloc (int *,int,int ,int ) ;
 int itextHostVtbl ;
 int itextServicesStdcallVtbl ;
 TYPE_1__* wrapperCodeMem ;

__attribute__((used)) static void setup_thiscall_wrappers(void)
{
}
