
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int AddAtomA (char*) ;
 int AddAtomW (char*) ;
 int FindAtomA (char*) ;
 int FindAtomW (char*) ;
 int memset (char*,char,int) ;
 int ok (int,char*) ;
 scalar_t__ unicode_OS ;

__attribute__((used)) static void test_local_error_handling(void)
{
    char buffer[260];
    WCHAR bufferW[260];
    int i;

    memset( buffer, 'a', 256 );
    buffer[256] = 0;
    ok( !AddAtomA(buffer), "add succeeded\n" );
    ok( !FindAtomA(buffer), "find succeeded\n" );

    if (unicode_OS)
    {
        for (i = 0; i < 256; i++) bufferW[i] = 'b';
        bufferW[256] = 0;
        ok( !AddAtomW(bufferW), "add succeeded\n" );
        ok( !FindAtomW(bufferW), "find succeeded\n" );
    }
}
