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
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int DIR_FstClusHI ; 
 int DIR_FstClusLO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static
void FUNC1 (
	BYTE* dir,	/* Pointer to the SFN entry */
	DWORD cl	/* Value to be set */
)
{
	FUNC0(dir + DIR_FstClusLO, cl);
	FUNC0(dir + DIR_FstClusHI, cl >> 16);
}