
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int SAFEARRAY ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int SAFEARRAY_HIDDEN_SIZE ;
 char* SAFEARRAY_Malloc (int) ;
 int S_OK ;

__attribute__((used)) static HRESULT SAFEARRAY_AllocDescriptor(ULONG ulSize, SAFEARRAY **ppsaOut)
{
  char *ptr = SAFEARRAY_Malloc(ulSize + SAFEARRAY_HIDDEN_SIZE);

  if (!ptr)
  {
      *ppsaOut = ((void*)0);
      return E_OUTOFMEMORY;
  }

  *ppsaOut = (SAFEARRAY*)(ptr + SAFEARRAY_HIDDEN_SIZE);
  return S_OK;
}
