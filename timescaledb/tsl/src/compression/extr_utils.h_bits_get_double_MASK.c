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
 int /*<<< orphan*/  FUNC1 (double*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline double
FUNC2(uint64 bits)
{
	double out;
	FUNC0(sizeof(uint64) == sizeof(double), "double is not IEEE double wide float");
	/* yes, this is the correct way to extract the bits of a floating point number in C */
	FUNC1(&out, &bits, sizeof(double));
	return out;
}