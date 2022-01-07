
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPCWSTR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int strcmpW (int *,int *) ;

__attribute__((used)) static BOOL compare_networkoptions(LPCWSTR opts1, LPCWSTR opts2)
{
    if ((opts1 == ((void*)0)) && (opts2 == ((void*)0)))
        return TRUE;
    if ((opts1 == ((void*)0)) || (opts2 == ((void*)0)))
        return FALSE;
    return !strcmpW(opts1, opts2);
}
