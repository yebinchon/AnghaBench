
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int INTERNET_SetLastError (scalar_t__) ;

__attribute__((used)) static BOOL res_to_le(DWORD res)
{
    if(res != ERROR_SUCCESS)
        INTERNET_SetLastError(res);
    return res == ERROR_SUCCESS;
}
