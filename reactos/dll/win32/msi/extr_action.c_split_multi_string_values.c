
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int **** WCHAR ;
typedef int DWORD ;


 int ******** msi_alloc (int) ;
 int msi_free (int ******) ;
 int ******* strdupW (int **** const*) ;
 scalar_t__ strlenW (int **** const*) ;

__attribute__((used)) static WCHAR **split_multi_string_values( const WCHAR *str, DWORD len, DWORD *count )
{
    const WCHAR *p = str;
    WCHAR **ret;
    int i = 0;

    *count = 0;
    if (!str) return ((void*)0);
    while ((p - str) < len)
    {
        p += strlenW( p ) + 1;
        (*count)++;
    }
    if (!(ret = msi_alloc( *count * sizeof(WCHAR *) ))) return ((void*)0);
    p = str;
    while ((p - str) < len)
    {
        if (!(ret[i] = strdupW( p )))
        {
            for (; i >= 0; i--) msi_free( ret[i] );
            msi_free( ret );
            return ((void*)0);
        }
        p += strlenW( p ) + 1;
        i++;
    }
    return ret;
}
