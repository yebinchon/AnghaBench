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
typedef  int /*<<< orphan*/  VOID ;
typedef  int ULONG ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static VOID FUNC2(ULONG base)
{
	ULONG v, i, j;

	FUNC1("0123456789abcdef0123456789abcdef\n");
	for (i = 0; i < 8; i++) 
	{
		v = FUNC0(base + i*0x10);
		for (j = 0; j < 32; j++) 
		{
			if (v & (1<<j))
				FUNC1("1");
			else
				FUNC1("0");
		}
		FUNC1("\n");
	}
}