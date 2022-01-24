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
typedef  int __int64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int*) ; 

void
FUNC3()
{
    int len = 123;
    __int64 len64;
    char buffer[64];

    FUNC2(buffer, "%07s%n", "test", &len);
    FUNC1(len, 7);

    len = 0x12345678;
    FUNC2(buffer, "%s%hn", "test", &len);
    FUNC1(len, 0x12340004);

    len = 0x12345678;
    FUNC2(buffer, "%s%hhn", "test", &len);
    FUNC1(len, 0x12340004);

    len64 = 0x0123456781234567ULL;
    FUNC2(buffer, "%s%lln", "test", &len64);
    FUNC0(len64 == 0x123456700000004ULL, " ");

}