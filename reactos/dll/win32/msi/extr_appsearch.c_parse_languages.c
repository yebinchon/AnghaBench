
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef int UINT ;
typedef int LANGID ;
typedef int DWORD ;


 int atoiW (scalar_t__*) ;
 int * msi_alloc (int) ;
 int msi_free (scalar_t__*) ;
 scalar_t__* strchrW (scalar_t__*,char) ;
 scalar_t__* strdupW (scalar_t__ const*) ;

__attribute__((used)) static LANGID *parse_languages( const WCHAR *languages, DWORD *num_ids )
{
    UINT i, count = 1;
    WCHAR *str = strdupW( languages ), *p, *q;
    LANGID *ret;

    if (!str) return ((void*)0);
    for (p = q = str; (q = strchrW( q, ',' )); q++) count++;

    if (!(ret = msi_alloc( count * sizeof(LANGID) )))
    {
        msi_free( str );
        return ((void*)0);
    }
    i = 0;
    while (*p)
    {
        q = strchrW( p, ',' );
        if (q) *q = 0;
        ret[i] = atoiW( p );
        if (!q) break;
        p = q + 1;
        i++;
    }
    msi_free( str );
    *num_ids = count;
    return ret;
}
