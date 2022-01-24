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
typedef  unsigned char* errno_t ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 unsigned char* EBADF ; 
 unsigned char* EINVAL ; 
 unsigned char* errno ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,unsigned char*) ; 
 unsigned char* FUNC3 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    errno_t ret;
    unsigned char buffer[20];

    if (!&p_mbslwr_s)
    {
        FUNC4("Skipping _mbslwr_s tests\n");
        return;
    }

    errno = EBADF;
    ret = FUNC3(NULL, 0);
    FUNC2(ret == 0, "Expected _mbslwr_s to return 0, got %d\n", ret);

    errno = EBADF;
    ret = FUNC3(NULL, sizeof(buffer));
    FUNC2(ret == EINVAL, "Expected _mbslwr_s to return EINVAL, got %d\n", ret);
    FUNC2(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);

    errno = EBADF;
    ret = FUNC3(buffer, 0);
    FUNC2(ret == EINVAL, "Expected _mbslwr_s to return EINVAL, got %d\n", ret);
    FUNC2(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);

    FUNC1(buffer, "ABCDEFGH", sizeof("ABCDEFGH"));
    errno = EBADF;
    ret = FUNC3(buffer, sizeof("ABCDEFGH"));
    FUNC2(ret == 0, "Expected _mbslwr_s to return 0, got %d\n", ret);
    FUNC2(!FUNC0(buffer, "abcdefgh", sizeof("abcdefgh")),
       "Expected the output buffer to be \"abcdefgh\", got \"%s\"\n",
       buffer);

    FUNC1(buffer, "ABCDEFGH", sizeof("ABCDEFGH"));
    errno = EBADF;
    ret = FUNC3(buffer, sizeof(buffer));
    FUNC2(ret == 0, "Expected _mbslwr_s to return 0, got %d\n", ret);
    FUNC2(!FUNC0(buffer, "abcdefgh", sizeof("abcdefgh")),
       "Expected the output buffer to be \"abcdefgh\", got \"%s\"\n",
       buffer);

    FUNC1(buffer, "ABCDEFGH", sizeof("ABCDEFGH"));
    errno = EBADF;
    ret = FUNC3(buffer, 4);
    FUNC2(ret == EINVAL, "Expected _mbslwr_s to return EINVAL, got %d\n", ret);
    FUNC2(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);

    FUNC1(buffer, "ABCDEFGH\0IJKLMNOP", sizeof("ABCDEFGH\0IJKLMNOP"));
    errno = EBADF;
    ret = FUNC3(buffer, sizeof(buffer));
    FUNC2(ret == 0, "Expected _mbslwr_s to return 0, got %d\n", ret);
    FUNC2(!FUNC0(buffer, "abcdefgh\0IJKLMNOP", sizeof("abcdefgh\0IJKLMNOP")),
       "Expected the output buffer to be \"abcdefgh\\0IJKLMNOP\", got \"%s\"\n",
       buffer);
}