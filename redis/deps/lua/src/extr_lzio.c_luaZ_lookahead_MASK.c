#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ n; int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ ZIO ;

/* Variables and functions */
 scalar_t__ EOZ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 

int FUNC2 (ZIO *z) {
  if (z->n == 0) {
    if (FUNC1(z) == EOZ)
      return EOZ;
    else {
      z->n++;  /* luaZ_fill removed first byte; put back it */
      z->p--;
    }
  }
  return FUNC0(*z->p);
}