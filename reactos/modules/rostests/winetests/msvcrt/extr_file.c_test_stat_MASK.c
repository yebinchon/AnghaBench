#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct stat {int st_mode; int st_dev; int st_rdev; int st_nlink; int st_size; } ;

/* Variables and functions */
 int ENOENT ; 
 int O_BINARY ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int _S_IFCHR ; 
 int _S_IFDIR ; 
 int _S_IFIFO ; 
 int _S_IFMT ; 
 int _S_IFREG ; 
 int _S_IREAD ; 
 int _S_IWRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int errno ; 
 int FUNC3 (int,struct stat*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,...) ; 
 int FUNC6 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int FUNC10 (char*,struct stat*) ; 

__attribute__((used)) static void FUNC11(void)
{
    int fd;
    int pipes[2];
    int ret;
    struct stat buf;

    /* Tests for a file */
    fd = FUNC6("stat.tst", O_WRONLY | O_CREAT | O_BINARY, _S_IREAD |_S_IWRITE);
    if (fd >= 0)
    {
        ret = FUNC3(fd, &buf);
        FUNC5(!ret, "fstat failed: errno=%d\n", errno);
        FUNC5((buf.st_mode & _S_IFMT) == _S_IFREG, "bad format = %06o\n", buf.st_mode);
        FUNC5((buf.st_mode & 0777) == 0666, "bad st_mode = %06o\n", buf.st_mode);
        FUNC5(buf.st_dev == 0, "st_dev is %d, expected 0\n", buf.st_dev);
        FUNC5(buf.st_dev == buf.st_rdev, "st_dev (%d) and st_rdev (%d) differ\n", buf.st_dev, buf.st_rdev);
        FUNC5(buf.st_nlink == 1, "st_nlink is %d, expected 1\n", buf.st_nlink);
        FUNC5(buf.st_size == 0, "st_size is %d, expected 0\n", buf.st_size);

        ret = FUNC10("stat.tst", &buf);
        FUNC5(!ret, "stat failed: errno=%d\n", errno);
        FUNC5((buf.st_mode & _S_IFMT) == _S_IFREG, "bad format = %06o\n", buf.st_mode);
        FUNC5((buf.st_mode & 0777) == 0666, "bad st_mode = %06o\n", buf.st_mode);
        FUNC5(buf.st_dev == buf.st_rdev, "st_dev (%d) and st_rdev (%d) differ\n", buf.st_dev, buf.st_rdev);
        FUNC5(buf.st_nlink == 1, "st_nlink is %d, expected 1\n", buf.st_nlink);
        FUNC5(buf.st_size == 0, "st_size is %d, expected 0\n", buf.st_size);

        errno = 0xdeadbeef;
        ret = FUNC10("stat.tst\\", &buf);
        FUNC5(ret == -1, "stat returned %d\n", ret);
        FUNC5(errno == ENOENT, "errno = %d\n", errno);

        FUNC2(fd);
        FUNC7("stat.tst");
    }
    else
        FUNC9("open failed with errno %d\n", errno);

    /* Tests for a char device */
    if (FUNC0(0, 10) == 0)
    {
        ret = FUNC3(10, &buf);
        FUNC5(!ret, "fstat(stdin) failed: errno=%d\n", errno);
        if ((buf.st_mode & _S_IFMT) == _S_IFCHR)
        {
            FUNC5(buf.st_mode == _S_IFCHR, "bad st_mode=%06o\n", buf.st_mode);
            FUNC5(buf.st_dev == 10, "st_dev is %d, expected 10\n", buf.st_dev);
            FUNC5(buf.st_rdev == 10, "st_rdev is %d, expected 10\n", buf.st_rdev);
            FUNC5(buf.st_nlink == 1, "st_nlink is %d, expected 1\n", buf.st_nlink);
        }
        else
            FUNC9("stdin is not a char device? st_mode=%06o\n", buf.st_mode);
        FUNC2(10);
    }
    else
        FUNC9("_dup2 failed with errno %d\n", errno);

    /* Tests for pipes */
    if (FUNC1(pipes, 1024, O_BINARY) == 0)
    {
        ret = FUNC3(pipes[0], &buf);
        FUNC5(!ret, "fstat(pipe) failed: errno=%d\n", errno);
        FUNC5(buf.st_mode == _S_IFIFO, "bad st_mode=%06o\n", buf.st_mode);
        FUNC5(buf.st_dev == pipes[0], "st_dev is %d, expected %d\n", buf.st_dev, pipes[0]);
        FUNC5(buf.st_rdev == pipes[0], "st_rdev is %d, expected %d\n", buf.st_rdev, pipes[0]);
        FUNC5(buf.st_nlink == 1, "st_nlink is %d, expected 1\n", buf.st_nlink);
        FUNC2(pipes[0]);
        FUNC2(pipes[1]);
    }
    else
        FUNC9("pipe failed with errno %d\n", errno);

    /* Tests for directory */
    if(FUNC4("stat.tst") == 0)
    {
        ret = FUNC10("stat.tst                         ", &buf);
        FUNC5(!ret, "stat(directory) failed: errno=%d\n", errno);
        FUNC5((buf.st_mode & _S_IFMT) == _S_IFDIR, "bad format = %06o\n", buf.st_mode);
        FUNC5((buf.st_mode & 0777) == 0777, "bad st_mode = %06o\n", buf.st_mode);
        FUNC5(buf.st_dev == buf.st_rdev, "st_dev (%d) and st_rdev (%d) differ\n", buf.st_dev, buf.st_rdev);
        FUNC5(buf.st_nlink == 1, "st_nlink is %d, expected 1\n", buf.st_nlink);

        errno = 0xdeadbeef;
        ret = FUNC10("stat.tst\\ ", &buf);
        FUNC5(ret == -1, "stat returned %d\n", ret);
        FUNC5(errno == ENOENT, "errno = %d\n", errno);
        FUNC8( "stat.tst" );
    }
    else
        FUNC9("mkdir failed with errno %d\n", errno);

    errno = 0xdeadbeef;
    ret = FUNC10("c:", &buf);
    FUNC5(ret == -1, "stat returned %d\n", ret);
    FUNC5(errno == ENOENT, "errno = %d\n", errno);

    ret = FUNC10("c:/", &buf);
    FUNC5(!ret, "stat returned %d\n", ret);
    FUNC5(buf.st_dev == 2, "st_dev = %d\n", buf.st_dev);
    FUNC5(buf.st_rdev == 2, "st_rdev = %d\n", buf.st_rdev);
}