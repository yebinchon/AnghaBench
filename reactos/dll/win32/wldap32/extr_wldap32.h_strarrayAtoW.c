
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef scalar_t__ LPSTR ;
typedef int DWORD ;


 int ** heap_alloc (int) ;
 int strAtoW (int ) ;
 int strarraylenA (scalar_t__*) ;

__attribute__((used)) static inline LPWSTR *strarrayAtoW( LPSTR *strarray )
{
    LPWSTR *strarrayW = ((void*)0);
    DWORD size;

    if (strarray)
    {
        size = sizeof(WCHAR*) * (strarraylenA( strarray ) + 1);
        if ((strarrayW = heap_alloc( size )))
        {
            LPSTR *p = strarray;
            LPWSTR *q = strarrayW;

            while (*p) *q++ = strAtoW( *p++ );
            *q = ((void*)0);
        }
    }
    return strarrayW;
}
