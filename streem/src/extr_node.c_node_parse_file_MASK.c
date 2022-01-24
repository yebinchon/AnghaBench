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
struct TYPE_4__ {char const* fname; } ;
typedef  TYPE_1__ parser_state ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int
FUNC4(parser_state* p, const char* fname)
{
  int r;
  FILE* fp = FUNC1(fname, "rb");
  if (fp == NULL) {
    FUNC3("fopen");
    return 0;
  }
  p->fname = fname;
  r = FUNC2(p, fp, fname);
  FUNC0(fp);
  return r;
}