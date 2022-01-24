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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(void)
{
    FUNC0(".\\testdir\\test1.txt");
    FUNC0(".\\testdir\\test2.txt");
    FUNC0(".\\testdir\\test3.txt");
    FUNC1(".\\testdir\\test.txt");
    FUNC1(".\\testdir\\testdir2\\subdir");
    FUNC1(".\\testdir\\testdir2");
    FUNC1(".\\testdir");
}