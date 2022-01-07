
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SAFEARRAY ;
typedef int * LPDWORD ;
typedef int DWORD ;



__attribute__((used)) static inline DWORD SAFEARRAY_GetHiddenDWORD(SAFEARRAY* psa)
{
  LPDWORD lpDw = (LPDWORD)psa;
  return lpDw[-1];
}
