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
struct cpuflags {int id; int std; int std2; int ext; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cpuflags) ; 
 scalar_t__ FUNC1 (struct cpuflags) ; 
 scalar_t__ FUNC2 (struct cpuflags) ; 
 scalar_t__ FUNC3 (struct cpuflags) ; 
 scalar_t__ FUNC4 (struct cpuflags) ; 
 scalar_t__ FUNC5 (struct cpuflags) ; 
 scalar_t__ FUNC6 (struct cpuflags) ; 
 int /*<<< orphan*/  FUNC7 (struct cpuflags*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

int FUNC9()
{
	int family;
	struct cpuflags flags;
	if(!FUNC7(&flags)){ FUNC8("CPU won't do cpuid (some old i386 or i486)\n"); return 0; }
	family = (flags.id & 0xf00)>>8;
	FUNC8("family: %i\n", family);
	FUNC8("stdcpuflags:  0x%08x\n", flags.std);
	FUNC8("std2cpuflags: 0x%08x\n", flags.std2);
	FUNC8("extcpuflags:  0x%08x\n", flags.ext);
	if(FUNC2(flags))
	{
		FUNC8("A i586 or better cpu with:");
		if(FUNC3(flags)) FUNC8(" mmx");
		if(FUNC0(flags)) FUNC8(" 3dnow");
		if(FUNC1(flags)) FUNC8(" 3dnowext");
		if(FUNC4(flags)) FUNC8(" sse");
		if(FUNC5(flags)) FUNC8(" sse2");
		if(FUNC6(flags)) FUNC8(" sse3");
		FUNC8("\n");
	}
	else FUNC8("I guess you have some i486\n");
	return 0;
}