
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPWSTR ;
typedef int * LPSTR ;
typedef int DWORD ;


 int ** heap_alloc (int) ;
 int strWtoA (int ) ;
 int strarraylenW (scalar_t__*) ;

__attribute__((used)) static inline LPSTR *strarrayWtoA( LPWSTR *strarray )
{
    LPSTR *strarrayA = ((void*)0);
    DWORD size;

    if (strarray)
    {
        size = sizeof(LPSTR) * (strarraylenW( strarray ) + 1);
        if ((strarrayA = heap_alloc( size )))
        {
            LPWSTR *p = strarray;
            LPSTR *q = strarrayA;

            while (*p) *q++ = strWtoA( *p++ );
            *q = ((void*)0);
        }
    }
    return strarrayA;
}
