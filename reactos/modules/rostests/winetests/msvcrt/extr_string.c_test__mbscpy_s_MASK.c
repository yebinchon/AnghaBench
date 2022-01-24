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
typedef  int /*<<< orphan*/  src ;
typedef  int /*<<< orphan*/  dest ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,char,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int FUNC3 (unsigned char*,int,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    const unsigned char src[] = "source string";
    unsigned char dest[16];
    int ret;

    if(!&p__mbscpy_s)
    {
        FUNC4("_mbscpy_s not found\n");
        return;
    }

    ret = FUNC3(NULL, 0, src);
    FUNC2(ret == EINVAL, "got %d\n", ret);
    ret = FUNC3(NULL, sizeof(dest), src);
    FUNC2(ret == EINVAL, "got %d\n", ret);
    ret = FUNC3(dest, 0, src);
    FUNC2(ret == EINVAL, "got %d\n", ret);
    dest[0] = 'x';
    ret = FUNC3(dest, sizeof(dest), NULL);
    FUNC2(ret == EINVAL, "got %d\n", ret);
    FUNC2(!dest[0], "dest buffer was not modified on invalid argument\n");

    FUNC1(dest, 'X', sizeof(dest));
    ret = FUNC3(dest, sizeof(dest), src);
    FUNC2(!ret, "got %d\n", ret);
    FUNC2(!FUNC0(dest, src, sizeof(src)), "dest = %s\n", dest);
    FUNC2(dest[sizeof(src)] == 'X', "unused part of buffer was modified\n");

    FUNC1(dest, 'X', sizeof(dest));
    ret = FUNC3(dest, 4, src);
    FUNC2(ret == ERANGE, "got %d\n", ret);
    FUNC2(!dest[0], "incorrect dest buffer (%d)\n", dest[0]);
    FUNC2(dest[1] == src[1], "incorrect dest buffer (%d)\n", dest[1]);
}