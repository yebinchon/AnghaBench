
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int len; } ;
typedef TYPE_1__ FORMSTR ;
typedef int FORMAT ;
typedef int DWORD ;


 int GetEnvironmentVariableW (int *,int *,int) ;
 int get_formstr_data (int *,TYPE_1__*) ;
 int lstrcpynW (int *,int ,int) ;
 int * msi_alloc (int) ;
 int msi_free (int *) ;

__attribute__((used)) static WCHAR *deformat_environment( FORMAT *format, FORMSTR *str, int *ret_len )
{
    WCHAR *key, *ret = ((void*)0);
    DWORD len;

    if (!(key = msi_alloc((str->len + 1) * sizeof(WCHAR)))) return ((void*)0);
    lstrcpynW(key, get_formstr_data(format, str), str->len + 1);

    if ((len = GetEnvironmentVariableW( key, ((void*)0), 0 )))
    {
        len++;
        if ((ret = msi_alloc( len * sizeof(WCHAR) )))
            *ret_len = GetEnvironmentVariableW( key, ret, len );
    }
    msi_free( key );
    return ret;
}
