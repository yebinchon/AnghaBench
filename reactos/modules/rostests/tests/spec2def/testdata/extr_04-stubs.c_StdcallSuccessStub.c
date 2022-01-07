
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DbgPrint (char*,void*) ;

int StdcallSuccessStub(void* a0)
{
 DbgPrint("WARNING: calling stub StdcallSuccessStub(0x%p)\n", (void*)a0);
 return 0;
}
