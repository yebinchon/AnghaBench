
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HMODULE ;
typedef int BOOL ;


 int * BeginUpdateResourceA (int ,int ) ;
 int EndUpdateResourceA (int *,int ) ;
 int FALSE ;
 int TRUE ;
 int filename ;
 int ok (int ,char*) ;

__attribute__((used)) static void update_resources_delete( void )
{
    HMODULE res;
    BOOL r;

    res = BeginUpdateResourceA( filename, TRUE );
    ok( res != ((void*)0), "BeginUpdateResource failed\n");

    r = EndUpdateResourceA( res, FALSE );
    ok( r, "EndUpdateResource failed\n");
}
