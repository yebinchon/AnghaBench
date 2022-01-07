
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* pProfileData; int cbDataSize; int dwType; } ;
typedef scalar_t__ TAGTYPE ;
typedef TYPE_1__ PROFILE ;
typedef int * HPROFILE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int GetLastError () ;
 int OPEN_EXISTING ;
 int PROFILE_FILENAME ;
 int PROFILE_READ ;
 int ok (int,char*,int ) ;
 int pCloseColorProfile (int *) ;
 scalar_t__ pGetColorProfileElementTag (int *,int,scalar_t__*) ;
 int * pOpenColorProfileA (TYPE_1__*,int ,int ,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void test_GetColorProfileElementTag( char *standardprofile )
{
    if (standardprofile)
    {
        PROFILE profile;
        HPROFILE handle;
        BOOL ret;
        DWORD index = 1;
        TAGTYPE tag, expect = 0x63707274;

        profile.dwType = PROFILE_FILENAME;
        profile.pProfileData = standardprofile;
        profile.cbDataSize = strlen(standardprofile);

        handle = pOpenColorProfileA( &profile, PROFILE_READ, 0, OPEN_EXISTING );
        ok( handle != ((void*)0), "OpenColorProfileA() failed (%d)\n", GetLastError() );



        ret = pGetColorProfileElementTag( ((void*)0), index, &tag );
        ok( !ret, "GetColorProfileElementTag() succeeded (%d)\n", GetLastError() );

        ret = pGetColorProfileElementTag( handle, 0, &tag );
        ok( !ret, "GetColorProfileElementTag() succeeded (%d)\n", GetLastError() );

        ret = pGetColorProfileElementTag( handle, index, ((void*)0) );
        ok( !ret, "GetColorProfileElementTag() succeeded (%d)\n", GetLastError() );

        ret = pGetColorProfileElementTag( handle, 18, ((void*)0) );
        ok( !ret, "GetColorProfileElementTag() succeeded (%d)\n", GetLastError() );



        ret = pGetColorProfileElementTag( handle, index, &tag );
        ok( ret && tag == expect, "GetColorProfileElementTag() failed (%d)\n",
            GetLastError() );

        pCloseColorProfile( handle );
    }
}
