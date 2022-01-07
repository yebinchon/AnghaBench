
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int static_buffer ;
typedef int (* iterate_fields_func ) (int ,int *,void*) ;
typedef int WCHAR ;
typedef int UINT ;
typedef int * PCWSTR ;
typedef int INFCONTEXT ;
typedef int HINF ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ SetupFindFirstLineW (int ,int *,int *,int *) ;
 scalar_t__ SetupFindNextMatchLineW (int *,int *,int *) ;
 int SetupGetFieldCount (int *) ;
 scalar_t__ TRUE ;
 int WARN (char*,int ,int ,int ) ;
 int debugstr_w (int *) ;
 int * get_field_string (int *,int,int *,int *,int*) ;

__attribute__((used)) static BOOL iterate_section_fields( HINF hinf, PCWSTR section, PCWSTR key,
                                    iterate_fields_func callback, void *arg )
{
    WCHAR static_buffer[200];
    WCHAR *buffer = static_buffer;
    DWORD size = sizeof(static_buffer)/sizeof(WCHAR);
    INFCONTEXT context;
    BOOL ret = FALSE;

    BOOL ok = SetupFindFirstLineW( hinf, section, key, &context );
    while (ok)
    {
        UINT i, count = SetupGetFieldCount( &context );
        for (i = 1; i <= count; i++)
        {
            if (!(buffer = get_field_string( &context, i, buffer, static_buffer, &size )))
                goto done;
            if (!callback( hinf, buffer, arg ))
            {
                WARN("callback failed for %s %s err %d\n",
                     debugstr_w(section), debugstr_w(buffer), GetLastError() );
                goto done;
            }
        }
        ok = SetupFindNextMatchLineW( &context, key, &context );
    }
    ret = TRUE;
 done:
    if (buffer != static_buffer) HeapFree( GetProcessHeap(), 0, buffer );
    return ret;
}
