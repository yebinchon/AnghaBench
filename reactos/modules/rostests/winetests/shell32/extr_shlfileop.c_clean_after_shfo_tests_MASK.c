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
    FUNC0("test1.txt");
    FUNC0("test2.txt");
    FUNC0("test3.txt");
    FUNC0("test_5.txt");
    FUNC0("one.txt");
    FUNC0("test4.txt\\test1.txt");
    FUNC0("test4.txt\\test2.txt");
    FUNC0("test4.txt\\test3.txt");
    FUNC0("test4.txt\\one.txt");
    FUNC0("test4.txt\\nested\\two.txt");
    FUNC1("test4.txt\\nested");
    FUNC1("test4.txt");
    FUNC0("testdir2\\one.txt");
    FUNC0("testdir2\\test1.txt");
    FUNC0("testdir2\\test2.txt");
    FUNC0("testdir2\\test3.txt");
    FUNC0("testdir2\\test4.txt\\test1.txt");
    FUNC0("testdir2\\nested\\two.txt");
    FUNC1("testdir2\\test4.txt");
    FUNC1("testdir2\\nested");
    FUNC1("testdir2");
    FUNC1("c:\\testdir3");
    FUNC0("nonexistent\\notreal\\test2.txt");
    FUNC1("nonexistent\\notreal");
    FUNC1("nonexistent");
}