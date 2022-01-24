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
struct bar_data {int llen; int dlen; int max; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(struct bar_data* d)
{
  FUNC0(1,2);
  FUNC1("\x1b[0m");
  for (int i=0; i<d->llen; i++) {
    FUNC0(i+2, d->dlen+1);
    if (i == 0) {
      FUNC1("├ %d   ", d->max);
    }
    else if (i == d->llen-1) {
      FUNC1("├ 0");
    }
    else {
      FUNC1("│");
    }
  }
}