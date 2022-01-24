#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_7__ {int len; } ;
typedef  int MSize ;
typedef  TYPE_1__ GCstr ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

GCstr *FUNC4(lua_State *L, GCstr *s1, GCstr *s2)
{
  MSize len1 = s1->len, len2 = s2->len;
  char *buf = FUNC0(L, len1 + len2);
  FUNC2(buf, FUNC3(s1), len1);
  FUNC2(buf+len1, FUNC3(s2), len2);
  return FUNC1(L, buf, len1 + len2);
}