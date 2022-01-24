#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {int align; int /*<<< orphan*/  endian; } ;
typedef  TYPE_1__ Header ;

/* Variables and functions */
 int /*<<< orphan*/  BIG ; 
 int /*<<< orphan*/  LITTLE ; 
 int /*<<< orphan*/  MAXALIGN ; 
 int FUNC0 (char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC5 (lua_State *L, int opt, const char **fmt,
                            Header *h) {
  switch (opt) {
    case  ' ': return;  /* ignore white spaces */
    case '>': h->endian = BIG; return;
    case '<': h->endian = LITTLE; return;
    case '!': {
      int a = FUNC0(fmt, MAXALIGN);
      if (!FUNC1(a))
        FUNC3(L, "alignment %d is not a power of 2", a);
      h->align = a;
      return;
    }
    default: {
      const char *msg = FUNC4(L, "invalid format option '%c'", opt);
      FUNC2(L, 1, msg);
    }
  }
}