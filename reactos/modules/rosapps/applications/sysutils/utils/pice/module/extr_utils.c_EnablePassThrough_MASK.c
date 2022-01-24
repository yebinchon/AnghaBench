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
typedef  int ULONG ;
typedef  int /*<<< orphan*/  PULONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(void)
{
	ULONG oldCF8,flags;

	FUNC4(flags);
	FUNC0();

	oldCF8 = FUNC1((PULONG)0xcf8);
	FUNC2(0x80000050,(PULONG)0xcf8);
	FUNC2(FUNC1((PULONG)0xcfc)|0x00000020,(PULONG)0xcfc);
	FUNC2(oldCF8,(PULONG)0xcf8);

	FUNC3(flags);
}