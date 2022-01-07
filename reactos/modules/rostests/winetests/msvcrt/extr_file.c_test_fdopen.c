
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int FILE ;


 int O_BINARY ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_WRONLY ;
 int SEEK_SET ;
 int _S_IREAD ;
 int _S_IWRITE ;
 int close (int) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int fread (char*,int,int,int *) ;
 int lseek (int,int,int ) ;
 scalar_t__ memcmp (char*,char const*,int) ;
 int ok (int,char*) ;
 int open (char*,int,...) ;
 int unlink (char*) ;
 int write (int,char const*,int) ;

__attribute__((used)) static void test_fdopen( void )
{
    static const char buffer[] = {0,1,2,3,4,5,6,7,8,9};
    char ibuf[10];
    int fd;
    FILE *file;

    fd = open ("fdopen.tst", O_WRONLY | O_CREAT | O_BINARY, _S_IREAD |_S_IWRITE);
    write (fd, buffer, sizeof (buffer));
    close (fd);

    fd = open ("fdopen.tst", O_RDONLY | O_BINARY);
    lseek (fd, 5, SEEK_SET);
    file = fdopen (fd, "rb");
    ok (fread (ibuf, 1, sizeof (buffer), file) == 5, "read wrong byte count\n");
    ok (memcmp (ibuf, buffer + 5, 5) == 0, "read wrong bytes\n");
    fclose (file);
    unlink ("fdopen.tst");
}
