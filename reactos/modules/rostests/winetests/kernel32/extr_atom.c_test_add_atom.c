
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef char* LPCSTR ;
typedef int INT_PTR ;
typedef int ATOM ;


 int ERROR_CALL_NOT_IMPLEMENTED ;
 int FOOBARW ;
 int GetLastError () ;
 int GlobalAddAtomA (char*) ;
 int GlobalAddAtomW (int ) ;
 int GlobalFindAtomA (char*) ;
 int GlobalFindAtomW (int ) ;
 int SetLastError (int) ;
 scalar_t__ TRUE ;
 int _foobarW ;
 int foobarW ;
 int ok (int,char*,...) ;
 int trace (char*) ;
 scalar_t__ unicode_OS ;

__attribute__((used)) static void test_add_atom(void)
{
    ATOM atom, w_atom;
    INT_PTR i;

    SetLastError( 0xdeadbeef );
    atom = GlobalAddAtomA( "foobar" );
    ok( atom >= 0xc000, "bad atom id %x\n", atom );
    ok( GetLastError() == 0xdeadbeef, "GlobalAddAtomA set last error\n" );


    ok( GlobalFindAtomA( "foobar" ) == atom, "could not find atom foobar\n" );
    ok( GlobalFindAtomA( "FOOBAR" ) == atom, "could not find atom FOOBAR\n" );
    ok( !GlobalFindAtomA( "_foobar" ), "found _foobar\n" );



    SetLastError( 0xdeadbeef );
    w_atom = GlobalAddAtomW( foobarW );
    if (w_atom && GetLastError() != ERROR_CALL_NOT_IMPLEMENTED)
        unicode_OS = TRUE;
    else
        trace("WARNING: Unicode atom APIs are not supported on this platform\n");

    if (unicode_OS)
    {
        ok( w_atom == atom, "Unicode atom does not match ASCII\n" );
        ok( GetLastError() == 0xdeadbeef, "GlobalAddAtomW set last error\n" );
    }


    if (unicode_OS)
    {
        ok( GlobalFindAtomW( foobarW ) == atom, "could not find atom foobar\n" );
        ok( GlobalFindAtomW( FOOBARW ) == atom, "could not find atom FOOBAR\n" );
        ok( !GlobalFindAtomW( _foobarW ), "found _foobar\n" );
    }





    SetLastError( 0xdeadbeef );
    ok( GlobalAddAtomA(0) == 0 && GetLastError() == 0xdeadbeef, "succeeded to add atom 0\n" );
    if (unicode_OS)
    {
        SetLastError( 0xdeadbeef );
        ok( GlobalAddAtomW(0) == 0 && GetLastError() == 0xdeadbeef, "succeeded to add atom 0\n" );
    }

    SetLastError( 0xdeadbeef );
    for (i = 1; i <= 0xbfff; i++)
    {
        SetLastError( 0xdeadbeef );
        ok( GlobalAddAtomA((LPCSTR)i) == i && GetLastError() == 0xdeadbeef,
            "failed to add atom %lx\n", i );
        if (unicode_OS)
        {
            SetLastError( 0xdeadbeef );
            ok( GlobalAddAtomW((LPCWSTR)i) == i && GetLastError() == 0xdeadbeef,
                "failed to add atom %lx\n", i );
        }
    }

    for (i = 0xc000; i <= 0xffff; i++)
    {
        ok( !GlobalAddAtomA((LPCSTR)i), "succeeded adding %lx\n", i );
        if (unicode_OS)
            ok( !GlobalAddAtomW((LPCWSTR)i), "succeeded adding %lx\n", i );
    }
}
