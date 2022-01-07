
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* pProfileData; void* cbDataSize; void* dwType; } ;
typedef TYPE_1__ PROFILE ;
typedef int * HTRANSFORM ;
typedef int * HPROFILE ;
typedef int DWORD ;


 int GetLastError () ;
 int INTENT_PERCEPTUAL ;
 int OPEN_EXISTING ;
 void* PROFILE_FILENAME ;
 int PROFILE_READ ;
 int ok (int ,char*,int ) ;
 int pCloseColorProfile (int *) ;
 int * pCreateMultiProfileTransform (int **,int,int *,int,int ,int ) ;
 int pDeleteColorTransform (int *) ;
 int * pOpenColorProfileA (TYPE_1__*,int ,int ,int ) ;
 void* strlen (char*) ;

__attribute__((used)) static void test_CreateMultiProfileTransform( char *standardprofile, char *testprofile )
{
    PROFILE profile;
    HPROFILE handle[2];
    HTRANSFORM transform;
    DWORD intents[2] = { INTENT_PERCEPTUAL, INTENT_PERCEPTUAL };

    if (testprofile)
    {
        profile.dwType = PROFILE_FILENAME;
        profile.pProfileData = standardprofile;
        profile.cbDataSize = strlen(standardprofile);

        handle[0] = pOpenColorProfileA( &profile, PROFILE_READ, 0, OPEN_EXISTING );
        ok( handle[0] != ((void*)0), "got %u\n", GetLastError() );

        profile.dwType = PROFILE_FILENAME;
        profile.pProfileData = testprofile;
        profile.cbDataSize = strlen(testprofile);

        handle[1] = pOpenColorProfileA( &profile, PROFILE_READ, 0, OPEN_EXISTING );
        ok( handle[1] != ((void*)0), "got %u\n", GetLastError() );

        transform = pCreateMultiProfileTransform( handle, 2, intents, 2, 0, 0 );
        ok( transform != ((void*)0), "got %u\n", GetLastError() );

        pDeleteColorTransform( transform );
        pCloseColorProfile( handle[0] );
        pCloseColorProfile( handle[1] );
    }
}
