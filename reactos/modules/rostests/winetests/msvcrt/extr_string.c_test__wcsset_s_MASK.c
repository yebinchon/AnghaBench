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
typedef  char wchar_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char) ; 
 int FUNC1 (char*,int,char) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    wchar_t str[10];
    int r;

    if(!&p__wcsset_s) {
        FUNC2("_wcsset_s not available\n");
        return;
    }

    r = FUNC1(NULL, 0, 'a');
    FUNC0(r == EINVAL, "r = %d\n", r);

    str[0] = 'a';
    r = FUNC1(str, 0, 'a');
    FUNC0(r == EINVAL, "r = %d\n", r);
    FUNC0(str[0] == 'a', "str[0] = %d\n", str[0]);

    str[0] = 'a';
    str[1] = 'b';
    r = FUNC1(str, 2, 'c');
    FUNC0(r == EINVAL, "r = %d\n", r);
    FUNC0(!str[0], "str[0] = %d\n", str[0]);
    FUNC0(str[1] == 'b', "str[1] = %d\n", str[1]);

    str[0] = 'a';
    str[1] = 0;
    str[2] = 'b';
    r = FUNC1(str, 3, 'c');
    FUNC0(r == 0, "r = %d\n", r);
    FUNC0(str[0] == 'c', "str[0] = %d\n", str[0]);
    FUNC0(str[1] == 0, "str[1] = %d\n", str[1]);
    FUNC0(str[2] == 'b', "str[2] = %d\n", str[2]);
}