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
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static void FUNC2(void)
{
    FUNC0("msitest", NULL);
    FUNC1("msitest\\one.txt", 100);
    FUNC0("msitest\\first", NULL);
    FUNC1("msitest\\first\\two.txt", 100);
    FUNC0("msitest\\second", NULL);
    FUNC1("msitest\\second\\three.txt", 100);
    FUNC0("msitest\\cabout",NULL);
    FUNC1("msitest\\cabout\\four.txt", 100);
    FUNC0("msitest\\cabout\\new",NULL);
    FUNC1("msitest\\cabout\\new\\five.txt", 100);
    FUNC1("msitest\\filename", 100);
}