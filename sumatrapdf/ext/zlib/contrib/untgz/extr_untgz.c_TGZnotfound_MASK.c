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
 scalar_t__* TGZsuffix ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 char* prog ; 
 int /*<<< orphan*/  stderr ; 

void FUNC2 (const char *arcname)
{
  int i;

  FUNC1(stderr,"%s: Couldn't find ",prog);
  for (i=0;TGZsuffix[i];i++)
    FUNC1(stderr,(TGZsuffix[i+1]) ? "%s%ld, " : "or %s%s\n",
            arcname,
            TGZsuffix[i]);
  FUNC0(1);
}