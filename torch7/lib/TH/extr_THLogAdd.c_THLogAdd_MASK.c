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
 double MINUS_LOG_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (char*,double,double,double) ; 
 int /*<<< orphan*/  FUNC1 (double) ; 
 scalar_t__ FUNC2 (double) ; 
 double FUNC3 (int /*<<< orphan*/ ) ; 

double FUNC4(double log_a, double log_b)
{
  double minusdif;

  if (log_a < log_b)
  {
    double tmp = log_a;
    log_a = log_b;
    log_b = tmp;
  }

  minusdif = log_b - log_a;
#ifdef DEBUG
  if (isnan(minusdif))
    THError("THLogAdd: minusdif (%f) log_b (%f) or log_a (%f) is nan", minusdif, log_b, log_a);
#endif
  if (minusdif < MINUS_LOG_THRESHOLD)
    return log_a;
  else
    return log_a + FUNC3(FUNC1(minusdif));
}