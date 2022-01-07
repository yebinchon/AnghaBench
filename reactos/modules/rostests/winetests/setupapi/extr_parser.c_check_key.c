
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INFCONTEXT ;
typedef char const* DWORD ;


 char const* ERROR_INVALID_PARAMETER ;
 char* GetLastError () ;
 char* get_string_field (int *,int ) ;
 int ok (int,char*,char const*,...) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static const char *check_key( INFCONTEXT *context, const char *wanted )
{
    const char *key = get_string_field( context, 0 );
    DWORD err = GetLastError();

    if (!key)
    {
        ok( !wanted, "missing key %s\n", wanted );
        ok( err == 0 || err == ERROR_INVALID_PARAMETER, "last error set to %u\n", err );
    }
    else
    {
        ok( !strcmp( key, wanted ), "bad key %s/%s\n", key, wanted );
        ok( err == 0, "last error set to %u\n", err );
    }
    return key;
}
