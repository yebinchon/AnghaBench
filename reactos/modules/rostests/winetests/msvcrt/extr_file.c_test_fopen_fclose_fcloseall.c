
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EINVAL ;
 int ENOENT ;
 int EOF ;
 int _fcloseall () ;
 scalar_t__ _unlink (char*) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_fopen_fclose_fcloseall( void )
{
    char fname1[] = "empty1";
    char fname2[] = "empty2";
    char fname3[] = "empty3";
    FILE *stream1, *stream2, *stream3, *stream4;
    int ret, numclosed;


    stream1 = fopen(fname1, "w+");
    ok(stream1 != ((void*)0), "The file '%s' was not opened\n", fname1);
    stream2 = fopen(fname2, "w ");
    ok(stream2 != ((void*)0), "The file '%s' was not opened\n", fname2 );
    _unlink(fname3);
    stream3 = fopen(fname3, "r");
    ok(stream3 == ((void*)0), "The file '%s' shouldn't exist before\n", fname3 );
    stream3 = fopen(fname3, "w+");
    ok(stream3 != ((void*)0), "The file '%s' should be opened now\n", fname3 );
    errno = 0xfaceabad;
    stream4 = fopen("", "w+");
    ok(stream4 == ((void*)0) && (errno == EINVAL || errno == ENOENT),
       "filename is empty, errno = %d (expected 2 or 22)\n", errno);
    errno = 0xfaceabad;
    stream4 = fopen(((void*)0), "w+");
    ok(stream4 == ((void*)0) && (errno == EINVAL || errno == ENOENT),
       "filename is NULL, errno = %d (expected 2 or 22)\n", errno);


    ret = fclose(stream2);
    ok(ret == 0, "The file '%s' was not closed\n", fname2);
    ret = fclose(stream3);
    ok(ret == 0, "The file '%s' was not closed\n", fname3);
    errno = 0xdeadbeef;
    ret = fclose(stream2);
    ok(ret == EOF, "Closing file '%s' returned %d\n", fname2, ret);
    ok(errno == 0xdeadbeef, "errno = %d\n", errno);
    ret = fclose(stream3);
    ok(ret == EOF, "Closing file '%s' returned %d\n", fname3, ret);
    ok(errno == 0xdeadbeef, "errno = %d\n", errno);


    numclosed = _fcloseall();

    ok(numclosed == 1, "Number of files closed by fcloseall(): %u\n", numclosed);
    numclosed = _fcloseall();
    ok(numclosed == 0, "Number of files closed by fcloseall(): %u\n", numclosed);

    ok(_unlink(fname1) == 0, "Couldn't unlink file named '%s'\n", fname1);
    ok(_unlink(fname2) == 0, "Couldn't unlink file named '%s'\n", fname2);
    ok(_unlink(fname3) == 0, "Couldn't unlink file named '%s'\n", fname3);
}
