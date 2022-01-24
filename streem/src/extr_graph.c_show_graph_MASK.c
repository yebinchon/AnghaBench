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
struct bar_data {int offset; int dlen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bar_data*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bar_data*) ; 

__attribute__((used)) static void
FUNC2(struct bar_data* d)
{
  int n = 1;
  
  FUNC1(d);
  for (int i=d->offset; i<d->dlen; i++) {
    FUNC0(d, i, n++);
  }
  for (int i=0; i<d->offset; i++) {
    FUNC0(d, i, n++);
  }
}