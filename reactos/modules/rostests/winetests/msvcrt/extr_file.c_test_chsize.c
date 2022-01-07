
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int temptext ;
typedef scalar_t__ LONG ;


 int SEEK_CUR ;
 int _O_CREAT ;
 int _O_RDWR ;
 int _O_TRUNC ;
 int _S_IREAD ;
 int _S_IWRITE ;
 scalar_t__ _chsize (int,int) ;
 int _close (int) ;
 int _filelength (int) ;
 scalar_t__ _lseek (int,int ,int ) ;
 int _open (char*,int,int) ;
 char* _tempnam (char*,char*) ;
 int _unlink (char*) ;
 scalar_t__ _write (int,char*,int) ;
 int free (char*) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_chsize( void )
{
    int fd;
    LONG cur, pos, count;
    char temptext[] = "012345678";
    char *tempfile = _tempnam( ".", "tst" );

    ok( tempfile != ((void*)0), "Couldn't create test file: %s\n", tempfile );

    fd = _open( tempfile, _O_CREAT|_O_TRUNC|_O_RDWR, _S_IREAD|_S_IWRITE );
    ok( fd > 0, "Couldn't open test file\n" );

    count = _write( fd, temptext, sizeof(temptext) );
    ok( count > 0, "Couldn't write to test file\n" );


    cur = _lseek( fd, 0, SEEK_CUR );


    ok( _chsize( fd, sizeof(temptext) / 2 ) == 0, "_chsize() failed\n" );

    pos = _lseek( fd, 0, SEEK_CUR );
    ok( cur == pos, "File pointer changed from: %d to: %d\n", cur, pos );
    ok( _filelength( fd ) == sizeof(temptext) / 2, "Wrong file size\n" );


    ok( _chsize( fd, sizeof(temptext) * 2 ) == 0, "_chsize() failed\n" );

    pos = _lseek( fd, 0, SEEK_CUR );
    ok( cur == pos, "File pointer changed from: %d to: %d\n", cur, pos );
    ok( _filelength( fd ) == sizeof(temptext) * 2, "Wrong file size\n" );

    _close( fd );
    _unlink( tempfile );
    free( tempfile );
}
