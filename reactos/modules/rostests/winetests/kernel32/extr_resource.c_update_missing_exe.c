
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HANDLE ;


 int * BeginUpdateResourceA (int ,int ) ;
 int GLE ;
 int GetLastError () ;
 int SetLastError (int) ;
 int TRUE ;
 int filename ;
 int ok (int ,char*) ;

__attribute__((used)) static void update_missing_exe( void )
{
    HANDLE res;

    SetLastError(0xdeadbeef);
    res = BeginUpdateResourceA( filename, TRUE );
    GLE = GetLastError();
    ok( res == ((void*)0), "BeginUpdateResource should fail\n");
}
