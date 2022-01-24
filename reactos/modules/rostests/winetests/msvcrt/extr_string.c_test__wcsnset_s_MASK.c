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
 int FUNC1 (char*,int,char,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    wchar_t text[] = { 't','e','x','t',0 };
    int r;

    if(!&p__wcsnset_s) {
        FUNC2("_wcsnset_s not available\n");
        return;
    }

    r = FUNC1(NULL, 0, 'a', 0);
    FUNC0(r == 0, "r = %d\n", r);

    r = FUNC1(text, 0, 'a', 1);
    FUNC0(r == EINVAL, "r = %d\n", r);
    FUNC0(text[0] == 't', "text[0] = %d\n", text[0]);

    r = FUNC1(NULL, 2, 'a', 1);
    FUNC0(r == EINVAL, "r = %d\n", r);

    r = FUNC1(text, 2, 'a', 3);
    FUNC0(r == EINVAL, "r = %d\n", r);
    FUNC0(text[0] == 0, "text[0] = %d\n", text[0]);
    FUNC0(text[1] == 'e', "text[1] = %d\n", text[1]);

    text[0] = 't';
    r = FUNC1(text, 5, 'a', 1);
    FUNC0(r == 0, "r = %d\n", r);
    FUNC0(text[0] == 'a', "text[0] = %d\n", text[0]);
    FUNC0(text[1] == 'e', "text[1] = %d\n", text[1]);

    text[1] = 0;
    r = FUNC1(text, 5, 'b', 3);
    FUNC0(r == 0, "r = %d\n", r);
    FUNC0(text[0] == 'b', "text[0] = %d\n", text[0]);
    FUNC0(text[1] == 0, "text[1] = %d\n", text[1]);
    FUNC0(text[2] == 'x', "text[2] = %d\n", text[2]);
}