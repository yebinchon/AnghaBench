
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SAFEARRAY ;
typedef int * LPDWORD ;
typedef int DWORD ;



__attribute__((used)) static inline void SAFEARRAY_SetHiddenDWORD(SAFEARRAY* psa, DWORD dw)
{

  LPDWORD lpDw = (LPDWORD)psa;
  lpDw[-1] = dw;
}
