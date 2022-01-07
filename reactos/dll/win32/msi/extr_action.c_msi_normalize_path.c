
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 char* msi_alloc (int) ;
 int strlenW (char const*) ;

WCHAR *msi_normalize_path( const WCHAR *in )
{
    const WCHAR *p = in;
    WCHAR *q, *ret;
    int n, len = strlenW( in ) + 2;

    if (!(q = ret = msi_alloc( len * sizeof(WCHAR) ))) return ((void*)0);

    len = 0;
    while (1)
    {

        while (*p != ' ' && (*q = *p))
        {
            p++, len++;

            if (*p != '\\' || *q != '\\')
                q++;
        }


        if (!*p)
            break;


        n = 0;
        while (p[n] == ' ')
            n++;


        if ( len == 0 || p[-1] == '\\' || p[n] == '\\' )
            p += n;
        else
            while (n && (*q++ = *p++)) n--;
    }
    while (q - ret > 0 && q[-1] == ' ') q--;
    if (q - ret > 0 && q[-1] != '\\')
    {
        q[0] = '\\';
        q[1] = 0;
    }
    return ret;
}
