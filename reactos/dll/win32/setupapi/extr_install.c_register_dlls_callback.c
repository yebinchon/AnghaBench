
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct register_dll_info {int dummy; } ;
typedef int buffer ;
typedef char WCHAR ;
typedef int PCWSTR ;
typedef int INT ;
typedef int INFCONTEXT ;
typedef int HINF ;
typedef scalar_t__ BOOL ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,char*) ;
 char* HeapReAlloc (int ,int ,char*,int) ;
 int MAX_INF_STRING_LENGTH ;
 char* PARSER_get_dest_dir (int *) ;
 scalar_t__ SetupFindFirstLineW (int ,int ,int *,int *) ;
 scalar_t__ SetupFindNextLine (int *,int *) ;
 int SetupGetIntField (int *,int,int*) ;
 scalar_t__ SetupGetStringFieldW (int *,int,char*,int,int *) ;
 scalar_t__ TRUE ;
 scalar_t__ do_register_dll (struct register_dll_info*,char*,int,int,char*) ;
 int strcpyW (char*,char*) ;
 int strlenW (char*) ;

__attribute__((used)) static BOOL register_dlls_callback( HINF hinf, PCWSTR field, void *arg )
{
    struct register_dll_info *info = arg;
    INFCONTEXT context;
    BOOL ret = TRUE;
    BOOL ok = SetupFindFirstLineW( hinf, field, ((void*)0), &context );

    for (; ok; ok = SetupFindNextLine( &context, &context ))
    {
        WCHAR *path, *args, *p;
        WCHAR buffer[MAX_INF_STRING_LENGTH];
        INT flags, timeout;


        if (!(path = PARSER_get_dest_dir( &context ))) continue;


        if (!SetupGetStringFieldW( &context, 3, buffer, sizeof(buffer)/sizeof(WCHAR), ((void*)0) ))
            goto done;
        if (!(p = HeapReAlloc( GetProcessHeap(), 0, path,
                               (strlenW(path) + strlenW(buffer) + 2) * sizeof(WCHAR) ))) goto done;
        path = p;
        p += strlenW(p);
        if (p == path || p[-1] != '\\') *p++ = '\\';
        strcpyW( p, buffer );


        if (!SetupGetIntField( &context, 4, &flags )) flags = 0;


        if (!SetupGetIntField( &context, 5, &timeout )) timeout = 60;


        args = ((void*)0);
        if (SetupGetStringFieldW( &context, 6, buffer, sizeof(buffer)/sizeof(WCHAR), ((void*)0) ))
            args = buffer;

        ret = do_register_dll( info, path, flags, timeout, args );

    done:
        HeapFree( GetProcessHeap(), 0, path );
        if (!ret) break;
    }
    return ret;
}
