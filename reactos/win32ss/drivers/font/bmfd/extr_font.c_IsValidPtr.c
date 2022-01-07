
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ ULONG ;
typedef scalar_t__ PVOID ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static
BOOLEAN
IsValidPtr(
    PVOID p,
    ULONG cjSize,
    PVOID pStart,
    PVOID pEnd,
    ULONG cjAlign)
{
    if ((ULONG_PTR)p < (ULONG_PTR)pStart ||
        (ULONG_PTR)p + cjSize >= (ULONG_PTR)pEnd ||
        (ULONG_PTR)p & (cjAlign -1))
    {
        return FALSE;
    }
    return TRUE;
}
