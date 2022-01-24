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
struct bar_data {double* data; double max; double llen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(struct bar_data* d, int i, int n)
{
  double f = d->data[i] / d->max * d->llen;

  for (int line=0; line<d->llen; line++) {
    FUNC0(d->llen+1-line, n);
    if (line < f) {
      FUNC1("\x1b[7m ");
    }
    else if (line == 0) {
      FUNC1("\x1b[0m_");
    }
    else {
      FUNC1("\x1b[0m ");
    }
  }
}