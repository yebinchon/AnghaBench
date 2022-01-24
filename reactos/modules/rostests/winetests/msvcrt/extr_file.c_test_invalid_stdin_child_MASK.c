#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ handle; int wxflag; } ;
typedef  TYPE_1__ ioinfo ;
struct TYPE_9__ {int _file; } ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int EBADF ; 
 int EOF ; 
 size_t MSVCRT_FD_BLOCK_SIZE ; 
 size_t STDIN_FILENO ; 
 TYPE_1__** __pioinfo ; 
 int FUNC0 (char,TYPE_2__*) ; 
 scalar_t__ FUNC1 (size_t) ; 
 int FUNC2 (size_t) ; 
 int errno ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (char*,int,int,TYPE_2__*) ; 
 int FUNC5 (char*,int,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 
 int FUNC7 (size_t,char*,int) ; 
 TYPE_2__* stdin ; 
 int FUNC8 (size_t,char*,int) ; 

__attribute__((used)) static void FUNC9( void )
{
    HANDLE handle;
    ioinfo *info;
    int ret;
    char c;

    errno = 0xdeadbeef;
    handle = (HANDLE)FUNC1(STDIN_FILENO);
    FUNC6(handle == (HANDLE)-2, "handle = %p\n", handle);
    FUNC6(errno == 0xdeadbeef, "errno = %d\n", errno);

    info = &__pioinfo[STDIN_FILENO/MSVCRT_FD_BLOCK_SIZE][STDIN_FILENO%MSVCRT_FD_BLOCK_SIZE];
    FUNC6(info->handle == (HANDLE)-2, "info->handle = %p\n", info->handle);
    FUNC6(info->wxflag == 0xc1, "info->wxflag = %x\n", info->wxflag);

    FUNC6(stdin->_file == -2, "stdin->_file = %d\n", stdin->_file);

    errno = 0xdeadbeef;
    ret = FUNC4(&c, 1, 1, stdin);
    FUNC6(!ret, "fread(stdin) returned %d\n", ret);
    FUNC6(errno == EBADF, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    ret = FUNC7(-2, &c, 1);
    FUNC6(ret == -1, "read(-2) returned %d\n", ret);
    FUNC6(errno == EBADF, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    ret = FUNC7(STDIN_FILENO, &c, 1);
    FUNC6(ret == -1, "read(STDIN_FILENO) returned %d\n", ret);
    FUNC6(errno == EBADF, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    ret = FUNC0('a', stdin);
    FUNC6(ret == EOF, "_flsbuf(stdin) returned %d\n", ret);
    FUNC6(errno == EBADF, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    ret = FUNC5(&c, 1, 1, stdin);
    FUNC6(!ret, "fwrite(stdin) returned %d\n", ret);
    FUNC6(errno == EBADF, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    ret = FUNC8(-2, &c, 1);
    FUNC6(ret == -1, "write(-2) returned %d\n", ret);
    FUNC6(errno == EBADF, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    ret = FUNC8(STDIN_FILENO, &c, 1);
    FUNC6(ret == -1, "write(STDIN_FILENO) returned %d\n", ret);
    FUNC6(errno == EBADF, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    ret = FUNC3(stdin);
    FUNC6(ret == -1, "fclose(stdin) returned %d\n", ret);
    FUNC6(errno == EBADF, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    ret = FUNC2(-2);
    FUNC6(ret == -1, "close(-2) returned %d\n", ret);
    FUNC6(errno == EBADF, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    ret = FUNC2(STDIN_FILENO);
    FUNC6(ret==-1 || !ret, "close(STDIN_FILENO) returned %d\n", ret);
    FUNC6((ret==-1 && errno==EBADF) || (!ret && errno==0xdeadbeef), "errno = %d\n", errno);
}