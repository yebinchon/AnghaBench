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
struct rnorm_data {double spare; int /*<<< orphan*/  seed; scalar_t__ has_spare; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 double FUNC0 (double) ; 
 double FUNC1 (int /*<<< orphan*/ ) ; 
 double FUNC2 (double) ; 

__attribute__((used)) static double
FUNC3(struct rnorm_data* d)
{
  double u, v, s;

  if(d->has_spare) {
    d->has_spare = FALSE;
    return d->spare;
  }

  d->has_spare = TRUE;
  do {
    u = FUNC1(d->seed) * 2.0 - 1.0;
    v = FUNC1(d->seed) * 2.0 - 1.0;
    s = u * u + v * v;
  } while (s >= 1.0 || s == 0.0);

  s = FUNC2(-2.0 * FUNC0(s) / s);
  d->spare = v * s;
  return u * s;
}