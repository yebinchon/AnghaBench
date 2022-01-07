
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int handle; int wxflag; } ;
typedef TYPE_1__ ioinfo ;
typedef int HANDLE ;


 int CREATE_ALWAYS ;
 int CloseHandle (int) ;
 int CreateFileA (char*,int ,int ,int *,int ,int ,int *) ;
 int CreatePipe (int*,int*,int *,int ) ;
 int DeleteFileA (char*) ;
 int EBADF ;
 int GENERIC_WRITE ;
 int INVALID_HANDLE_VALUE ;
 int MSVCRT_FD_BLOCK_SIZE ;
 TYPE_1__** __pioinfo ;
 int _open_osfhandle (intptr_t,int ) ;
 int close (int) ;
 int errno ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test__open_osfhandle(void)
{
    ioinfo *info;
    HANDLE h, tmp;
    int fd;

    errno = 0xdeadbeef;
    fd = _open_osfhandle((intptr_t)INVALID_HANDLE_VALUE, 0);
    ok(fd == -1, "_open_osfhandle returned %d\n", fd);
    ok(errno == EBADF, "errno = %d\n", errno);

    h = CreateFileA("open_osfhandle.tst", GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, 0, ((void*)0));
    fd = _open_osfhandle((intptr_t)h, 0);
    ok(fd > 0, "_open_osfhandle returned %d (%d)\n", fd, errno);
    info = &__pioinfo[fd/MSVCRT_FD_BLOCK_SIZE][fd%MSVCRT_FD_BLOCK_SIZE];
    ok(info->handle == h, "info->handle = %p, expected %p\n", info->handle, h);
    ok(info->wxflag == 1, "info->wxflag = %x, expected 1\n", info->wxflag);
    close(fd);
    ok(info->handle == INVALID_HANDLE_VALUE, "info->handle = %p, expected INVALID_HANDLE_VALUE\n", info->handle);
    ok(info->wxflag == 0, "info->wxflag = %x, expected 0\n", info->wxflag);
    DeleteFileA("open_osfhandle.tst");

    errno = 0xdeadbeef;
    fd = _open_osfhandle((intptr_t)h, 0);
    ok(fd == -1, "_open_osfhandle returned %d\n", fd);
    ok(errno == EBADF, "errno = %d\n", errno);

    ok(CreatePipe(&h, &tmp, ((void*)0), 0), "CreatePipe failed\n");
    fd = _open_osfhandle((intptr_t)h, 0);
    ok(fd > 0, "_open_osfhandle returned %d (%d)\n", fd, errno);
    info = &__pioinfo[fd/MSVCRT_FD_BLOCK_SIZE][fd%MSVCRT_FD_BLOCK_SIZE];
    ok(info->handle == h, "info->handle = %p, expected %p\n", info->handle, h);
    ok(info->wxflag == 9, "info->wxflag = %x, expected 9\n", info->wxflag);
    close(fd);
    CloseHandle(tmp);
}
