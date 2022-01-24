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
typedef  scalar_t__ uint64_t ;
typedef  char uint32_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_4__ {scalar_t__ len; } ;
typedef  int /*<<< orphan*/  SBuf ;
typedef  scalar_t__ MSize ;
typedef  TYPE_1__ GCstr ;

/* Variables and functions */
 scalar_t__ LJ_MAX_STR ; 
 scalar_t__ FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (TYPE_1__*) ; 

SBuf *FUNC6(SBuf *sb, GCstr *s, int32_t rep)
{
  MSize len = s->len;
  if (rep > 0 && len) {
    uint64_t tlen = (uint64_t)rep * len;
    char *p;
    if (FUNC0(tlen > LJ_MAX_STR))
      FUNC2(FUNC3(sb));
    p = FUNC1(sb, (MSize)tlen);
    if (len == 1) {  /* Optimize a common case. */
      uint32_t c = FUNC5(s)[0];
      do { *p++ = c; } while (--rep > 0);
    } else {
      const char *e = FUNC5(s) + len;
      do {
	const char *q = FUNC5(s);
	do { *p++ = *q++; } while (q < e);
      } while (--rep > 0);
    }
    FUNC4(sb, p);
  }
  return sb;
}