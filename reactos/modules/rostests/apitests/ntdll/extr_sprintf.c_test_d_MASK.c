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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*,char*,int,...) ; 

void
FUNC3()
{
    char buffer[5000];
    int result;

    FUNC2(buffer, "%d", 1234567);
    FUNC1(buffer, "1234567");

    FUNC2(buffer, "%d", -1234567);
    FUNC1(buffer, "-1234567");

    FUNC2(buffer, "%hd", 1234567);
    FUNC1(buffer, "-10617");

    FUNC2(buffer, "%08d", 1234);
    FUNC1(buffer, "00001234");

    FUNC2(buffer, "%-08d", 1234);
    FUNC1(buffer, "1234    ");

    FUNC2(buffer, "%+08d", 1234);
    FUNC1(buffer, "+0001234");

    FUNC2(buffer, "%+3d", 1234);
    FUNC1(buffer, "+1234");

    FUNC2(buffer, "%3.3d", 1234);
    FUNC1(buffer, "1234");

    FUNC2(buffer, "%3.6d", 1234);
    FUNC1(buffer, "001234");

    FUNC2(buffer, "%8d", -1234);
    FUNC1(buffer, "   -1234");

    FUNC2(buffer, "%08d", -1234);
    FUNC1(buffer, "-0001234");

    FUNC2(buffer, "%ld", -1234);
    FUNC1(buffer, "-1234");

    FUNC2(buffer, "%wd", -1234);
    FUNC1(buffer, "-1234");

    FUNC2(buffer, "%ld", -5149074030855LL);
    FUNC1(buffer, "591757049");

    FUNC2(buffer, "%lld", -5149074030855LL);
    FUNC1(buffer, "591757049");

    FUNC2(buffer, "%I64d", -5149074030855LL);
    FUNC1(buffer, "-5149074030855");

    FUNC2(buffer, "%Ld", -5149074030855LL);
    FUNC1(buffer, "591757049");

    FUNC2(buffer, "%lhwI64d", -5149074030855LL);
    FUNC1(buffer, "-5149074030855");

    FUNC2(buffer, "%I64hlwd", -5149074030855LL);
    FUNC1(buffer, "-5149074030855");

    FUNC2(buffer, "%hlwd", -5149074030855LL);
    FUNC1(buffer, "32505");

    FUNC2(buffer, "%Ild", -5149074030855LL);
    FUNC1(buffer, "Ild");

    FUNC2(buffer, "%hd", -5149074030855LL);
    FUNC1(buffer, "32505");

    FUNC2(buffer, "%hhd", -5149074030855LL);
    FUNC1(buffer, "32505");

    FUNC2(buffer, "%hI32hd", -5149074030855LL);
    FUNC1(buffer, "32505");

    FUNC2(buffer, "%wd", -5149074030855LL);
    FUNC1(buffer, "591757049");

    result = FUNC2(buffer, " %d.%d", 3, 0);
    FUNC0(result, 4);

}