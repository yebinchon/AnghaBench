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
typedef  int /*<<< orphan*/  real ;
typedef  int /*<<< orphan*/  mpg123_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ ** layer12_table ; 
 int* mulmul ; 
 int FUNC1 (double,double) ; 

real* FUNC2(mpg123_handle *fr, real *table, int m)
{
#if defined(REAL_IS_FIXED) && defined(PRECALC_TABLES)
	int i;
	for(i=0;i<63;i++)
	*table++ = layer12_table[m][i];
#else
	int i,j;
	for(j=3,i=0;i<63;i++,j--)
	*table++ = FUNC0(mulmul[m] * FUNC1(2.0,(double) j / 3.0));
#endif

	return table;
}