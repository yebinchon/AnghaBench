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
 double FUNC0 (float,double) ; 

__attribute__((used)) static int FUNC1(float quality) {
  const double val = FUNC0(quality / 100., 0.5);
  const double max_diff = 31 * (1 - val) + 1 * val;
  return (int)(max_diff + 0.5);
}