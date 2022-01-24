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
typedef  int lua_Unsigned ;
typedef  int /*<<< orphan*/  luaL_Buffer ;

/* Variables and functions */
 int MC ; 
 int NB ; 
 int SZINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2 (luaL_Buffer *b, lua_Unsigned n,
                     int islittle, int size, int neg) {
  char *buff = FUNC1(b, size);
  int i;
  buff[islittle ? 0 : size - 1] = (char)(n & MC);  /* first byte */
  for (i = 1; i < size; i++) {
    n >>= NB;
    buff[islittle ? i : size - 1 - i] = (char)(n & MC);
  }
  if (neg && size > SZINT) {  /* negative number need sign extension? */
    for (i = SZINT; i < size; i++)  /* correct extra bytes */
      buff[islittle ? i : size - 1 - i] = (char)MC;
  }
  FUNC0(b, size);  /* add result to buffer */
}