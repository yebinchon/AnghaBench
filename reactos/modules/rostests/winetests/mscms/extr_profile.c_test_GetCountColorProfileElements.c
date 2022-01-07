
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* pProfileData; int cbDataSize; int dwType; } ;
typedef TYPE_1__ PROFILE ;
typedef int * HPROFILE ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int GetLastError () ;
 int OPEN_EXISTING ;
 int PROFILE_FILENAME ;
 int PROFILE_READ ;
 int ok (int,char*,int ) ;
 int pCloseColorProfile (int *) ;
 scalar_t__ pGetCountColorProfileElements (int *,scalar_t__*) ;
 int * pOpenColorProfileA (TYPE_1__*,int ,int ,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void test_GetCountColorProfileElements( char *standardprofile )
{
    if (standardprofile)
    {
        PROFILE profile;
        HPROFILE handle;
        BOOL ret;
        DWORD count, expect = 17;

        profile.dwType = PROFILE_FILENAME;
        profile.pProfileData = standardprofile;
        profile.cbDataSize = strlen(standardprofile);

        handle = pOpenColorProfileA( &profile, PROFILE_READ, 0, OPEN_EXISTING );
        ok( handle != ((void*)0), "OpenColorProfileA() failed (%d)\n", GetLastError() );



        ret = pGetCountColorProfileElements( ((void*)0), &count );
        ok( !ret, "GetCountColorProfileElements() succeeded (%d)\n",
            GetLastError() );

        ret = pGetCountColorProfileElements( handle, ((void*)0) );
        ok( !ret, "GetCountColorProfileElements() succeeded (%d)\n",
            GetLastError() );



        ret = pGetCountColorProfileElements( handle, &count );
        ok( ret && count == expect,
            "GetCountColorProfileElements() failed (%d)\n", GetLastError() );

        pCloseColorProfile( handle );
    }
}
