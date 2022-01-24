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
typedef  int /*<<< orphan*/  THGenerator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,double,double) ; 
 double FUNC2 (int /*<<< orphan*/ ) ; 

double FUNC3(THGenerator *_generator, double mean, double stdv)
{
  FUNC0(stdv > 0, 2, "standard deviation must be strictly positive");
  return(FUNC2(FUNC1(_generator, mean, stdv)));
}