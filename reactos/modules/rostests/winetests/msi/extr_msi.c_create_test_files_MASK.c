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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  MEDIA_SIZE ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static void FUNC4(void)
{
    FUNC0("msitest", NULL);
    FUNC3("msitest\\one.txt", "msitest\\one.txt", 100);
    FUNC0("msitest\\first", NULL);
    FUNC3("msitest\\first\\two.txt", "msitest\\first\\two.txt", 100);
    FUNC0("msitest\\second", NULL);
    FUNC3("msitest\\second\\three.txt", "msitest\\second\\three.txt", 100);

    FUNC3("four.txt", "four.txt", 100);
    FUNC3("five.txt", "five.txt", 100);
    FUNC2("msitest.cab", MEDIA_SIZE, "four.txt\0five.txt\0");

    FUNC3("msitest\\filename", "msitest\\filename", 100);
    FUNC3("msitest\\service.exe", "msitest\\service.exe", 100);

    FUNC1("four.txt");
    FUNC1("five.txt");
}