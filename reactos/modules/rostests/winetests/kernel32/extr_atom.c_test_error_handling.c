
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int GlobalAddAtomA (char*) ;
 int GlobalAddAtomW (char*) ;
 int GlobalFindAtomA (char*) ;
 int GlobalFindAtomW (char*) ;
 int memset (char*,char,int) ;
 int ok (int,char*) ;
 scalar_t__ unicode_OS ;

__attribute__((used)) static void test_error_handling(void)
{
    char buffer[260];
    WCHAR bufferW[260];
    int i;

    memset( buffer, 'a', 256 );
    buffer[256] = 0;
    ok( !GlobalAddAtomA(buffer), "add succeeded\n" );
    ok( !GlobalFindAtomA(buffer), "find succeeded\n" );

    if (unicode_OS)
    {
        for (i = 0; i < 256; i++) bufferW[i] = 'b';
        bufferW[256] = 0;
        ok( !GlobalAddAtomW(bufferW), "add succeeded\n" );
        ok( !GlobalFindAtomW(bufferW), "find succeeded\n" );
    }
}
