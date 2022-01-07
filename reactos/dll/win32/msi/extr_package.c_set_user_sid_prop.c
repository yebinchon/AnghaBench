
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_3__ {int db; } ;
typedef int SID_NAME_USE ;
typedef int * PSID ;
typedef TYPE_1__ MSIPACKAGE ;
typedef int * LPWSTR ;
typedef int DWORD ;


 int ConvertSidToStringSidW (int *,int **) ;
 int ERROR_FUNCTION_FAILED ;
 int ERROR_OUTOFMEMORY ;
 int GetUserNameW (int *,int*) ;
 int LocalFree (int *) ;
 int LookupAccountNameW (int *,int *,int *,int*,int *,int*,int *) ;
 int * msi_alloc (int) ;
 int msi_free (int *) ;
 int msi_set_property (int ,int ,int *,int) ;
 int szUserSID ;

__attribute__((used)) static UINT set_user_sid_prop( MSIPACKAGE *package )
{
    SID_NAME_USE use;
    LPWSTR user_name;
    LPWSTR sid_str = ((void*)0), dom = ((void*)0);
    DWORD size, dom_size;
    PSID psid = ((void*)0);
    UINT r = ERROR_FUNCTION_FAILED;

    size = 0;
    GetUserNameW( ((void*)0), &size );

    user_name = msi_alloc( (size + 1) * sizeof(WCHAR) );
    if (!user_name)
        return ERROR_OUTOFMEMORY;

    if (!GetUserNameW( user_name, &size ))
        goto done;

    size = 0;
    dom_size = 0;
    LookupAccountNameW( ((void*)0), user_name, ((void*)0), &size, ((void*)0), &dom_size, &use );

    psid = msi_alloc( size );
    dom = msi_alloc( dom_size*sizeof (WCHAR) );
    if (!psid || !dom)
    {
        r = ERROR_OUTOFMEMORY;
        goto done;
    }

    if (!LookupAccountNameW( ((void*)0), user_name, psid, &size, dom, &dom_size, &use ))
        goto done;

    if (!ConvertSidToStringSidW( psid, &sid_str ))
        goto done;

    r = msi_set_property( package->db, szUserSID, sid_str, -1 );

done:
    LocalFree( sid_str );
    msi_free( dom );
    msi_free( psid );
    msi_free( user_name );

    return r;
}
