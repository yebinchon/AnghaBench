
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPWSTR ;
typedef int DWORD ;


 char** heap_alloc (int) ;
 int strWtoU (int ) ;
 int strarraylenW (scalar_t__*) ;

__attribute__((used)) static inline char **strarrayWtoU( LPWSTR *strarray )
{
    char **strarrayU = ((void*)0);
    DWORD size;

    if (strarray)
    {
        size = sizeof(char*) * (strarraylenW( strarray ) + 1);
        if ((strarrayU = heap_alloc( size )))
        {
            LPWSTR *p = strarray;
            char **q = strarrayU;

            while (*p) *q++ = strWtoU( *p++ );
            *q = ((void*)0);
        }
    }
    return strarrayU;
}
