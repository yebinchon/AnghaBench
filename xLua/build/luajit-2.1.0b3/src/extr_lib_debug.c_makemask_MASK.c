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
 int LUA_MASKCALL ; 
 int LUA_MASKCOUNT ; 
 int LUA_MASKLINE ; 
 int LUA_MASKRET ; 
 scalar_t__ FUNC0 (char const*,char) ; 

__attribute__((used)) static int FUNC1(const char *smask, int count)
{
  int mask = 0;
  if (FUNC0(smask, 'c')) mask |= LUA_MASKCALL;
  if (FUNC0(smask, 'r')) mask |= LUA_MASKRET;
  if (FUNC0(smask, 'l')) mask |= LUA_MASKLINE;
  if (count > 0) mask |= LUA_MASKCOUNT;
  return mask;
}