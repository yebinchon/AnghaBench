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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int MAXINTSIZE ; 
 size_t FUNC0 (char const**,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 

__attribute__((used)) static size_t FUNC2 (lua_State *L, char opt, const char **fmt) {
  switch (opt) {
    case 'B': case 'b': return sizeof(char);
    case 'H': case 'h': return sizeof(short);
    case 'L': case 'l': return sizeof(long);
    case 'T': return sizeof(size_t);
    case 'f':  return sizeof(float);
    case 'd':  return sizeof(double);
    case 'x': return 1;
    case 'c': return FUNC0(fmt, 1);
    case 'i': case 'I': {
      int sz = FUNC0(fmt, sizeof(int));
      if (sz > MAXINTSIZE)
        FUNC1(L, "integral size %d is larger than limit of %d",
                       sz, MAXINTSIZE);
      return sz;
    }
    default: return 0;  /* other cases do not need alignment */
  }
}