
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int request_t ;
typedef int WCHAR ;
typedef scalar_t__* LPDWORD ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ auth_scheme_from_header (int *) ;
 scalar_t__ get_last_error () ;
 int * heap_alloc (scalar_t__) ;
 int heap_free (int *) ;
 int query_headers (int *,scalar_t__,int *,int *,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static BOOL query_auth_schemes( request_t *request, DWORD level, LPDWORD supported, LPDWORD first )
{
    DWORD index = 0, supported_schemes = 0, first_scheme = 0;
    BOOL ret = FALSE;

    for (;;)
    {
        WCHAR *buffer;
        DWORD size, scheme;

        size = 0;
        query_headers( request, level, ((void*)0), ((void*)0), &size, &index );
        if (get_last_error() != ERROR_INSUFFICIENT_BUFFER) break;

        index--;
        if (!(buffer = heap_alloc( size ))) return FALSE;
        if (!query_headers( request, level, ((void*)0), buffer, &size, &index ))
        {
            heap_free( buffer );
            return FALSE;
        }
        scheme = auth_scheme_from_header( buffer );
        heap_free( buffer );
        if (!scheme) continue;

        if (!first_scheme) first_scheme = scheme;
        supported_schemes |= scheme;

        ret = TRUE;
    }

    if (ret)
    {
        *supported = supported_schemes;
        *first = first_scheme;
    }
    return ret;
}
