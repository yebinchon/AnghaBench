
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;


 int SEEK_SET ;
 int atoi (char const*) ;
 int errno ;
 int lseek (int,int ,int ) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int ok (int,char*,...) ;
 int read (int,char*,int) ;
 int strerror (int ) ;
 int write (int,char*,int) ;

__attribute__((used)) static void test_file_inherit_child(const char* fd_s)
{
    int fd = atoi(fd_s);
    char buffer[32];
    int ret;

    ret =write(fd, "Success", 8);
    ok( ret == 8, "Couldn't write in child process on %d (%s)\n", fd, strerror(errno));
    lseek(fd, 0, SEEK_SET);
    ok(read(fd, buffer, sizeof (buffer)) == 8, "Couldn't read back the data\n");
    ok(memcmp(buffer, "Success", 8) == 0, "Couldn't read back the data\n");
}
