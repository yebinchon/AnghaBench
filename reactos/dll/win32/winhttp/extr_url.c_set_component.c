
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef int DWORD ;
typedef int BOOL ;


 int ERROR_INVALID_PARAMETER ;
 int ERROR_SUCCESS ;
 int ICU_DECODE ;
 int ICU_ESCAPE ;
 int TRUE ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;

__attribute__((used)) static DWORD set_component( WCHAR **str, DWORD *str_len, WCHAR *value, DWORD len, DWORD flags, BOOL *overflow )
{
    if (*str && !*str_len) return ERROR_INVALID_PARAMETER;
    if (!*str_len) return ERROR_SUCCESS;
    if (!*str)
    {
        if (len && *str_len && (flags & (ICU_DECODE|ICU_ESCAPE))) return ERROR_INVALID_PARAMETER;
        *str = value;
        *str_len = len;
    }
    else
    {
        if (len >= *str_len)
        {
            *str_len = len+1;
            *overflow = TRUE;
            return ERROR_SUCCESS;
        }
        memcpy( *str, value, len * sizeof(WCHAR) );
        (*str)[len] = 0;
        *str_len = len;
    }
    return ERROR_SUCCESS;
}
