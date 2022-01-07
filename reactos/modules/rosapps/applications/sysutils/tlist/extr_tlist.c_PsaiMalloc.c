
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIZE_T ;
typedef int NTSTATUS ;


 int MEM_COMMIT ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NtAllocateVirtualMemory (int ,void**,int ,int *,int ,int ) ;
 int NtCurrentProcess () ;
 int PAGE_READWRITE ;

void *PsaiMalloc(SIZE_T size)
{
 void * pBuf = ((void*)0);
 NTSTATUS nErrCode;

 nErrCode = NtAllocateVirtualMemory
 (
  NtCurrentProcess(),
  &pBuf,
  0,
  &size,
  MEM_COMMIT,
  PAGE_READWRITE
 );

 if(NT_SUCCESS(nErrCode)) return pBuf;
 else return ((void*)0);
}
