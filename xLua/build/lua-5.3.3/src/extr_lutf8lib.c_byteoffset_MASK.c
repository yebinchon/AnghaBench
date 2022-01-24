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
typedef  scalar_t__ lua_Integer ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC9 (lua_State *L) {
  size_t len;
  const char *s = FUNC3(L, 1, &len);
  lua_Integer n  = FUNC2(L, 2);
  lua_Integer posi = (n >= 0) ? 1 : len + 1;
  posi = FUNC8(FUNC5(L, 3, posi), len);
  FUNC1(L, 1 <= posi && --posi <= (lua_Integer)len, 3,
                   "position out of range");
  if (n == 0) {
    /* find beginning of current byte sequence */
    while (posi > 0 && FUNC0(s + posi)) posi--;
  }
  else {
    if (FUNC0(s + posi))
      FUNC4(L, "initial position is a continuation byte");
    if (n < 0) {
       while (n < 0 && posi > 0) {  /* move back */
         do {  /* find beginning of previous character */
           posi--;
         } while (posi > 0 && FUNC0(s + posi));
         n++;
       }
     }
     else {
       n--;  /* do not move for 1st character */
       while (n > 0 && posi < (lua_Integer)len) {
         do {  /* find beginning of next character */
           posi++;
         } while (FUNC0(s + posi));  /* (cannot pass final '\0') */
         n--;
       }
     }
  }
  if (n == 0)  /* did it find given character? */
    FUNC6(L, posi + 1);
  else  /* no such character */
    FUNC7(L);
  return 1;  
}