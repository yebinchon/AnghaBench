
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int DWORD ;


 int ** heap_alloc (int) ;
 int strUtoW (int ) ;
 int strarraylenU (char**) ;

__attribute__((used)) static inline LPWSTR *strarrayUtoW( char **strarray )
{
    LPWSTR *strarrayW = ((void*)0);
    DWORD size;

    if (strarray)
    {
        size = sizeof(WCHAR*) * (strarraylenU( strarray ) + 1);
        if ((strarrayW = heap_alloc( size )))
        {
            char **p = strarray;
            LPWSTR *q = strarrayW;

            while (*p) *q++ = strUtoW( *p++ );
            *q = ((void*)0);
        }
    }
    return strarrayW;
}
