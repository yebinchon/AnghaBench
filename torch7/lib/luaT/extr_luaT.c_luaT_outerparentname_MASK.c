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
 size_t FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 

int FUNC2(const char *tname, char *parent_name)
{
  char chars[] = {'.', '\0'};
  size_t idx;
  idx = FUNC0(tname, chars);
  FUNC1(parent_name, tname, idx);
  parent_name[idx] = '\0';
  return tname[idx] == '.';
}