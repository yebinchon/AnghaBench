
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPVOID ;
typedef int * LPDWORD ;
typedef int LPCWSTR ;
typedef int HRSRC ;


 int FindResourceW (int ,int ,int ) ;
 int GetModuleHandleW (int *) ;
 int LoadResource (int ,int ) ;
 int * LockResource (int ) ;
 scalar_t__ RT_RCDATA ;
 int SizeofResource (int ,int ) ;

__attribute__((used)) static LPVOID GetResource(LPCWSTR FontName, LPDWORD Size)
{
    HRSRC hRsrc;
    LPVOID Data;

    hRsrc = FindResourceW(GetModuleHandleW(((void*)0)), FontName, (LPCWSTR)RT_RCDATA);
    if (!hRsrc) return ((void*)0);

    Data = LockResource(LoadResource(GetModuleHandleW(((void*)0)), hRsrc));
    if (!Data) return ((void*)0);

    *Size = SizeofResource(GetModuleHandleW(((void*)0)), hRsrc);
    if (*Size == 0) return ((void*)0);

    return Data;
}
