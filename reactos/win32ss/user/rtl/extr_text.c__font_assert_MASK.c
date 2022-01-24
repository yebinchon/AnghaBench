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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FALSE ; 

void FUNC3(const char *msg, const char *file, int line)
{
  /* Assertion failed at foo.c line 45: x<y */
  FUNC1("Assertion failed at %s line %d: %s\n", file, line, msg);
#ifdef _WIN32K_
  ASSERT(FALSE);
#else
  FUNC2(3);  
  for(;;); /* eliminate warning by mingw */
#endif
}