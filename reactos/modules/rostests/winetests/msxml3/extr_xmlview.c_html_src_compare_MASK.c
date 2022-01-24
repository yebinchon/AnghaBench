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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const) ; 

__attribute__((used)) static int FUNC2(LPCWSTR strw, const char *stra)
{
    char buf[2048], *p1;
    const char *p2;

    FUNC0(CP_ACP, 0, strw, -1, buf, sizeof(buf), NULL, NULL);

    p1 = buf;
    p2 = stra;
    while(1) {
        while(*p1=='\r' || *p1=='\n' || *p1=='\"') p1++;
        while(*p2=='\r' || *p2=='\n') p2++;

        if(!*p1 || !*p2 || FUNC1(*p1)!=FUNC1(*p2))
            break;

        p1++;
        p2++;
    }

    return *p1 != *p2;
}