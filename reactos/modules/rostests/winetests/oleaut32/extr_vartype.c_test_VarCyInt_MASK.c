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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (double) ; 
 int /*<<< orphan*/  MATHVARS1 ; 

__attribute__((used)) static void FUNC2(void)
{
  MATHVARS1;

  FUNC1(-1.0001); FUNC0(-2);
  FUNC1(-1.4999); FUNC0(-2);
  FUNC1(-1.5001); FUNC0(-2);
  FUNC1(-1.9999); FUNC0(-2);
  FUNC1(-0.0001); FUNC0(-1);
  FUNC1(-0.4999); FUNC0(-1);
  FUNC1(-0.5001); FUNC0(-1);
  FUNC1(-0.9999); FUNC0(-1);
  FUNC1(0.0001);  FUNC0(0);
  FUNC1(0.4999);  FUNC0(0);
  FUNC1(0.5001);  FUNC0(0);
  FUNC1(0.9999);  FUNC0(0);
  FUNC1(1.0001);  FUNC0(1);
  FUNC1(1.4999);  FUNC0(1);
  FUNC1(1.5001);  FUNC0(1);
  FUNC1(1.9999);  FUNC0(1);
}