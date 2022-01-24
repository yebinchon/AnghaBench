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
struct TYPE_4__ {char* fname; scalar_t__ nerr; } ;
typedef  TYPE_1__ parser_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (TYPE_1__*) ; 

int
FUNC2(parser_state* p, const char* prog)
{
  int n;

  /* yydebug = 1; */
  p->fname = "-e";
  FUNC0(prog);
  n = FUNC1(p);
  if (n == 0 && p->nerr == 0) {
    return 0;
  }
  return 1;
}