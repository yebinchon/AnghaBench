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
 double FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (double) ; 

int FUNC3(THGenerator *_generator, double p)
{
  FUNC0(p > 0 && p < 1, 1, "must be > 0 and < 1");
  return((int)(FUNC2(1-FUNC1(_generator)) / FUNC2(p)) + 1);
}