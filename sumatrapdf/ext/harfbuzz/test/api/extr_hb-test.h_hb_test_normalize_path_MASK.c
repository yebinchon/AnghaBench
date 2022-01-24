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
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 

__attribute__((used)) static inline char *
FUNC3 (const char *path)
{
  char *s, *p;

  FUNC0 (0 == FUNC2 (path, "test_", 5));
  path += 4;

  s = FUNC1 (path);
  for (p = s; *p; p++)
    if (*p == '_')
      *p = '/';

  return s;
}