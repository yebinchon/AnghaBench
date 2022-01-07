
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HANDLE ;
typedef int BOOL ;


 int * BeginUpdateResourceA (int ,int) ;
 int EndUpdateResourceA (int *,int) ;
 int FALSE ;
 int GetLastError () ;
 int MAKEINTRESOURCEA (int) ;
 int TRUE ;
 int UpdateResourceA (int *,int ,int ,int,char*,int) ;
 int filename ;
 int ok (int,char*,...) ;

__attribute__((used)) static void update_resources_version( void )
{
    HANDLE res = ((void*)0);
    BOOL r;
    char foo[] = "red and white";

    res = BeginUpdateResourceA( filename, TRUE );
    ok( res != ((void*)0), "BeginUpdateResource failed\n");

    if (0)
    {
        r = UpdateResourceA( res,
                            MAKEINTRESOURCEA(0x1230),
                            MAKEINTRESOURCEA(0x4567),
                            0xabcd,
                            ((void*)0), 0 );
        ok( r == FALSE, "UpdateResource failed\n");
    }

    r = UpdateResourceA( res,
                        MAKEINTRESOURCEA(0x1230),
                        MAKEINTRESOURCEA(0x4567),
                        0xabcd,
                        foo, sizeof foo );
    ok( r == TRUE, "UpdateResource failed: %d\n", GetLastError());

    r = EndUpdateResourceA( res, FALSE );
    ok( r, "EndUpdateResource failed: %d\n", GetLastError());
}
