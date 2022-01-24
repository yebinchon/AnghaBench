#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  firstline; } ;
struct TYPE_8__ {int len; } ;
typedef  int /*<<< orphan*/  SBuf ;
typedef  int MSize ;
typedef  TYPE_1__ GCstr ;
typedef  TYPE_2__ GCproto ;
typedef  int /*<<< orphan*/  BCLine ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_2__*) ; 
 char* FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(SBuf *sb, GCproto *pt, int pathstrip)
{
  GCstr *name = FUNC3(pt);
  const char *p = FUNC4(name);
  if (pt->firstline == ~(BCLine)0) {
    FUNC1(sb, "[builtin:", 9);
    FUNC2(sb, name);
    FUNC0(sb, ']');
    return 0;
  }
  if (*p == '=' || *p == '@') {
    MSize len = name->len-1;
    p++;
    if (pathstrip) {
      int i;
      for (i = len-1; i >= 0; i--)
	if (p[i] == '/' || p[i] == '\\') {
	  len -= i+1;
	  p = p+i+1;
	  break;
	}
    }
    FUNC1(sb, p, len);
  } else {
    FUNC1(sb, "[string]", 8);
  }
  return 1;
}