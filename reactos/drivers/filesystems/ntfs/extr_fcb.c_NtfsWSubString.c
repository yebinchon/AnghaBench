
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int* PWCHAR ;
typedef int PCWSTR ;


 int wcsncpy (int*,int ,size_t) ;

__attribute__((used)) static
VOID
NtfsWSubString(PWCHAR pTarget,
               PCWSTR pSource,
               size_t pLength)
{
    wcsncpy(pTarget, pSource, pLength);
    pTarget[pLength] = L'\0';
}
