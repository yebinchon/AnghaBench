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
    FUNC0("msitest.msi");
    FUNC0("msitest.cab");
    FUNC0("msitest\\second\\three.txt");
    FUNC0("msitest\\first\\two.txt");
    FUNC0("msitest\\one.txt");
    FUNC0("msitest\\service.exe");
    FUNC0("msitest\\filename");
    FUNC1("msitest\\second");
    FUNC1("msitest\\first");
    FUNC1("msitest");
}