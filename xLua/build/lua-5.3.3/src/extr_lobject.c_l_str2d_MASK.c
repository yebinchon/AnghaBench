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
typedef  int /*<<< orphan*/  lua_Number ;

/* Variables and functions */
 int L_MAXLENNUM ; 
 int /*<<< orphan*/  FUNC0 (char const) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 char FUNC3 () ; 
 char* FUNC4 (char const*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int FUNC6 (char const*) ; 
 char* FUNC7 (char const*,char*) ; 

__attribute__((used)) static const char *FUNC8 (const char *s, lua_Number *result) {
  const char *endptr;
  const char *pmode = FUNC7(s, ".xXnN");
  int mode = pmode ? FUNC2(FUNC0(*pmode)) : 0;
  if (mode == 'n')  /* reject 'inf' and 'nan' */
    return NULL;
  endptr = FUNC1(s, result, mode);  /* try to convert */
  if (endptr == NULL) {  /* failed? may be a different locale */
    char buff[L_MAXLENNUM + 1];
    char *pdot = FUNC4(s, '.');
    if (FUNC6(s) > L_MAXLENNUM || pdot == NULL)
      return NULL;  /* string too long or no dot; fail */
    FUNC5(buff, s);  /* copy string to buffer */
    buff[pdot - s] = FUNC3();  /* correct decimal point */
    endptr = FUNC1(buff, result, mode);  /* try again */
    if (endptr != NULL)
      endptr = s + (endptr - buff);  /* make relative to 's' */
  }
  return endptr;
}