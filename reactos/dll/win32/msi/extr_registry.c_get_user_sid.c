
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_6__ {int Sid; } ;
struct TYPE_7__ {TYPE_1__ User; } ;
typedef TYPE_2__ TOKEN_USER ;
typedef int HANDLE ;
typedef int DWORD ;


 int CloseHandle (int ) ;
 int ConvertSidToStringSidW (int ,int **) ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 int GetCurrentProcess () ;
 scalar_t__ GetLastError () ;
 int GetTokenInformation (int ,int ,TYPE_2__*,int,int*) ;
 int OpenProcessToken (int ,int ,int *) ;
 int TOKEN_QUERY ;
 int TokenUser ;
 TYPE_2__* msi_alloc (int) ;
 int msi_free (TYPE_2__*) ;

__attribute__((used)) static WCHAR *get_user_sid(void)
{
    HANDLE token;
    DWORD size = 256;
    TOKEN_USER *user;
    WCHAR *ret;

    if (!OpenProcessToken( GetCurrentProcess(), TOKEN_QUERY, &token )) return ((void*)0);
    if (!(user = msi_alloc( size )))
    {
        CloseHandle( token );
        return ((void*)0);
    }
    if (!GetTokenInformation( token, TokenUser, user, size, &size ))
    {
        msi_free( user );
        if (GetLastError() != ERROR_INSUFFICIENT_BUFFER || !(user = msi_alloc( size )))
        {
            CloseHandle( token );
            return ((void*)0);
        }
        GetTokenInformation( token, TokenUser, user, size, &size );
    }
    CloseHandle( token );
    if (!ConvertSidToStringSidW( user->User.Sid, &ret ))
    {
        msi_free( user );
        return ((void*)0);
    }
    msi_free( user );
    return ret;
}
