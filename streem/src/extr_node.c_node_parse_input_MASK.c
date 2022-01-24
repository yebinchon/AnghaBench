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
struct TYPE_4__ {scalar_t__ nerr; } ;
typedef  TYPE_1__ parser_state ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int
FUNC2(parser_state* p, FILE* f, const char* fname)
{
  int n;

  /* yydebug = 1; */
  FUNC1(f);
  n = FUNC0(p);
  if (n == 0 && p->nerr == 0) {
    return 0;
  }
  return 1;
}