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
 scalar_t__ FUNC0 (int const*,int,double const) ; 
 scalar_t__ FUNC1 (int const*,int const*) ; 

__attribute__((used)) static float FUNC2(const int accumulated[4][256],
                                            const int tile[4][256]) {
  int i;
  double retval = 0;
  for (i = 0; i < 4; ++i) {
    const double kExpValue = 0.94;
    retval += FUNC0(tile[i], 1, kExpValue);
    retval += FUNC1(tile[i], accumulated[i]);
  }
  return (float)retval;
}