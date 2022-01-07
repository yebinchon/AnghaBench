
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct registry_callback_info {scalar_t__ delete; int default_root; } ;
typedef int buffer ;
typedef scalar_t__ WCHAR ;
typedef int UNICODE_NULL ;
struct TYPE_3__ {int nLength; int * lpSecurityDescriptor; int member_0; } ;
typedef TYPE_1__ SECURITY_ATTRIBUTES ;
typedef int * PSECURITY_DESCRIPTOR ;
typedef int * PCWSTR ;
typedef int * LPWSTR ;
typedef int INT ;
typedef int INFCONTEXT ;
typedef int HKEY ;
typedef int HINF ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ ConvertStringSecurityDescriptorToSecurityDescriptorW (int *,int ,int **,int *) ;
 int * DotSecurity ;
 int ERR (char*,int ,int ) ;
 int ERROR_NOT_ENOUGH_MEMORY ;
 scalar_t__ FALSE ;
 int FLG_ADDREG_DELREG_BIT ;
 int FLG_ADDREG_OVERWRITEONLY ;
 int LocalFree (int *) ;
 int MAXIMUM_ALLOWED ;
 int MAX_INF_STRING_LENGTH ;
 int MyFree (int *) ;
 int * MyMalloc (int) ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyExW (int ,scalar_t__*,int ,int *,int ,int ,TYPE_1__*,int *,int *) ;
 scalar_t__ RegOpenKeyW (int ,scalar_t__*,int *) ;
 int SDDL_REVISION_1 ;
 int SetLastError (int ) ;
 scalar_t__ SetupFindFirstLineW (int ,int *,int *,int *) ;
 scalar_t__ SetupFindNextLine (int *,int *) ;
 int SetupGetIntField (int *,int,int*) ;
 int SetupGetLineTextW (int *,int *,int *,int *,int *,int,int*) ;
 int SetupGetStringFieldW (int *,int,scalar_t__*,int,int *) ;
 int TRACE (char*,int ,int ) ;
 scalar_t__ TRUE ;
 int debugstr_w (scalar_t__*) ;
 int do_reg_operation (int ,scalar_t__*,int *,int) ;
 int get_root_key (scalar_t__*,int ) ;
 int strcatW (int *,int *) ;
 int strcpyW (int *,int *) ;
 int strlenW (int *) ;

__attribute__((used)) static BOOL registry_callback( HINF hinf, PCWSTR field, void *arg )
{
    struct registry_callback_info *info = arg;
    LPWSTR security_key, security_descriptor;
    INFCONTEXT context, security_context;
    PSECURITY_DESCRIPTOR sd = ((void*)0);
    SECURITY_ATTRIBUTES security_attributes = { 0, };
    HKEY root_key, hkey;
    DWORD required;

    BOOL ok = SetupFindFirstLineW( hinf, field, ((void*)0), &context );
    if (!ok)
        return TRUE;


    security_key = MyMalloc( (strlenW( field ) + strlenW( DotSecurity )) * sizeof(WCHAR) + sizeof(UNICODE_NULL) );
    if (!security_key)
    {
        SetLastError(ERROR_NOT_ENOUGH_MEMORY);
        return FALSE;
    }
    strcpyW( security_key, field );
    strcatW( security_key, DotSecurity );
    ok = SetupFindFirstLineW( hinf, security_key, ((void*)0), &security_context );
    MyFree(security_key);
    if (ok)
    {
        if (!SetupGetLineTextW( &security_context, ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0, &required ))
            return FALSE;
        security_descriptor = MyMalloc( required * sizeof(WCHAR) );
        if (!security_descriptor)
        {
            SetLastError(ERROR_NOT_ENOUGH_MEMORY);
            return FALSE;
        }
        if (!SetupGetLineTextW( &security_context, ((void*)0), ((void*)0), ((void*)0), security_descriptor, required, ((void*)0) ))
            return FALSE;
        ok = ConvertStringSecurityDescriptorToSecurityDescriptorW( security_descriptor, SDDL_REVISION_1, &sd, ((void*)0) );
        MyFree( security_descriptor );
        if (!ok)
            return FALSE;
        security_attributes.nLength = sizeof(SECURITY_ATTRIBUTES);
        security_attributes.lpSecurityDescriptor = sd;
    }

    for (ok = TRUE; ok; ok = SetupFindNextLine( &context, &context ))
    {
        WCHAR buffer[MAX_INF_STRING_LENGTH];
        INT flags;


        if (!SetupGetStringFieldW( &context, 1, buffer, sizeof(buffer)/sizeof(WCHAR), ((void*)0) ))
            continue;
        if (!(root_key = get_root_key( buffer, info->default_root )))
            continue;


        if (!SetupGetStringFieldW( &context, 2, buffer, sizeof(buffer)/sizeof(WCHAR), ((void*)0) ))
            *buffer = 0;


        if (!SetupGetIntField( &context, 4, &flags )) flags = 0;

        if (!info->delete)
        {
            if (flags & FLG_ADDREG_DELREG_BIT) continue;
        }
        else
        {
            if (!flags) flags = FLG_ADDREG_DELREG_BIT;
            else if (!(flags & FLG_ADDREG_DELREG_BIT)) continue;
        }

        if (info->delete || (flags & FLG_ADDREG_OVERWRITEONLY))
        {
            if (RegOpenKeyW( root_key, buffer, &hkey )) continue;
        }
        else if (RegCreateKeyExW( root_key, buffer, 0, ((void*)0), 0, MAXIMUM_ALLOWED,
            sd ? &security_attributes : ((void*)0), &hkey, ((void*)0) ))
        {
            ERR( "could not create key %p %s\n", root_key, debugstr_w(buffer) );
            continue;
        }
        TRACE( "key %p %s\n", root_key, debugstr_w(buffer) );


        if (!SetupGetStringFieldW( &context, 3, buffer, sizeof(buffer)/sizeof(WCHAR), ((void*)0) ))
            *buffer = 0;


        if (!do_reg_operation( hkey, buffer, &context, flags ))
        {
            if (hkey != root_key) RegCloseKey( hkey );
            if (sd) LocalFree( sd );
            return FALSE;
        }
        if (hkey != root_key) RegCloseKey( hkey );
    }
    if (sd) LocalFree( sd );
    return TRUE;
}
