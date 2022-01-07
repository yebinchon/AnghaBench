
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPINTERNAL_BSTR ;
typedef int DWORD ;
typedef scalar_t__ BSTR ;



__attribute__((used)) static inline LPINTERNAL_BSTR Get(const BSTR lpszString)
{
  return lpszString ? (LPINTERNAL_BSTR)((char*)lpszString - sizeof(DWORD)) : ((void*)0);
}
