
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PCWSTR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ wcscmp (scalar_t__,scalar_t__) ;

__attribute__((used)) static __inline BOOL
_EqualStrings(PCWSTR pwszA, PCWSTR pwszB)
{
    if (!pwszA && !pwszB)
        return TRUE;

    if (pwszA && !pwszB)
        return FALSE;

    if (!pwszA && pwszB)
        return FALSE;

    return (wcscmp(pwszA, pwszB) == 0);
}
