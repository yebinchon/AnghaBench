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
typedef  int /*<<< orphan*/  uint64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,double*,int) ; 

__attribute__((used)) static inline uint64
FUNC2(double in)
{
	uint64 out;
	FUNC0(sizeof(uint64) == sizeof(double), "double is not IEEE double wide float");
	/* yes, this is the correct way to extract the bits of a floating point number in C */
	FUNC1(&out, &in, sizeof(uint64));
	return out;
}