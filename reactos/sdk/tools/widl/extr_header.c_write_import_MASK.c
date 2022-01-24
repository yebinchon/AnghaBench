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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(FILE *header, const char *fname)
{
  char *hname, *p;

  hname = FUNC0(fname, ".idl");
  p = hname + FUNC5(hname) - 2;
  if (p <= hname || FUNC4( p, ".h" )) FUNC3(hname, ".h");

  FUNC1(header, "#include <%s>\n", hname);
  FUNC2(hname);
}