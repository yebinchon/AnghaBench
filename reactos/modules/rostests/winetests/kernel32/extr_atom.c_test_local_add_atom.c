
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef char* LPCSTR ;
typedef int INT_PTR ;
typedef int ATOM ;


 int AddAtomA (char*) ;
 int AddAtomW (int ) ;
 int ERROR_CALL_NOT_IMPLEMENTED ;
 int FOOBARW ;
 int FindAtomA (char*) ;
 int FindAtomW (int ) ;
 int GetLastError () ;
 int SetLastError (int) ;
 scalar_t__ TRUE ;
 int _foobarW ;
 int foobarW ;
 int ok (int,char*,...) ;
 int trace (char*) ;
 scalar_t__ unicode_OS ;

__attribute__((used)) static void test_local_add_atom(void)
{
    ATOM atom, w_atom;
    INT_PTR i;

    SetLastError( 0xdeadbeef );
    atom = AddAtomA( "foobar" );
    ok( atom >= 0xc000, "bad atom id %x\n", atom );
    ok( GetLastError() == 0xdeadbeef, "AddAtomA set last error\n" );


    ok( FindAtomA( "foobar" ) == atom, "could not find atom foobar\n" );
    ok( FindAtomA( "FOOBAR" ) == atom, "could not find atom FOOBAR\n" );
    ok( !FindAtomA( "_foobar" ), "found _foobar\n" );



    SetLastError( 0xdeadbeef );
    w_atom = AddAtomW( foobarW );
    if (w_atom && GetLastError() != ERROR_CALL_NOT_IMPLEMENTED)
        unicode_OS = TRUE;
    else
        trace("WARNING: Unicode atom APIs are not supported on this platform\n");

    if (unicode_OS)
    {
        ok( w_atom == atom, "Unicode atom does not match ASCII\n" );
        ok( GetLastError() == 0xdeadbeef, "AddAtomW set last error\n" );
    }


    if (unicode_OS)
    {
        ok( FindAtomW( foobarW ) == atom, "could not find atom foobar\n" );
        ok( FindAtomW( FOOBARW ) == atom, "could not find atom FOOBAR\n" );
        ok( !FindAtomW( _foobarW ), "found _foobar\n" );
    }





    SetLastError( 0xdeadbeef );
    ok( AddAtomA(0) == 0 && GetLastError() == 0xdeadbeef, "succeeded to add atom 0\n" );
    if (unicode_OS)
    {
        SetLastError( 0xdeadbeef );
        ok( AddAtomW(0) == 0 && GetLastError() == 0xdeadbeef, "succeeded to add atom 0\n" );
    }

    SetLastError( 0xdeadbeef );
    for (i = 1; i <= 0xbfff; i++)
    {
        SetLastError( 0xdeadbeef );
        ok( AddAtomA((LPCSTR)i) == i && GetLastError() == 0xdeadbeef,
            "failed to add atom %lx\n", i );
        if (unicode_OS)
        {
            SetLastError( 0xdeadbeef );
            ok( AddAtomW((LPCWSTR)i) == i && GetLastError() == 0xdeadbeef,
                "failed to add atom %lx\n", i );
        }
    }

    for (i = 0xc000; i <= 0xffff; i++)
    {
        ok( !AddAtomA((LPCSTR)i), "succeeded adding %lx\n", i );
        if (unicode_OS)
            ok( !AddAtomW((LPCWSTR)i), "succeeded adding %lx\n", i );
    }
}
