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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int /*<<< orphan*/  tm_isdst; scalar_t__ tm_yday; scalar_t__ tm_wday; scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  luaL_Buffer ;
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 struct tm* FUNC0 (int /*<<< orphan*/ *) ; 
 struct tm* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ luaL_checknumber ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 
 size_t FUNC13 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15 (lua_State *L) {
  const char *s = FUNC6(L, 1, "%c");
  time_t t = FUNC5(L, (time_t)luaL_checknumber, 2, FUNC14(NULL));
  struct tm *stm;
  if (*s == '!') {  /* UTC? */
    stm = FUNC0(&t);
    s++;  /* skip `!' */
  }
  else
    stm = FUNC1(&t);
  if (stm == NULL)  /* invalid date? */
    FUNC9(L);
  else if (FUNC12(s, "*t") == 0) {
    FUNC8(L, 0, 9);  /* 9 = number of fields */
    FUNC11(L, "sec", stm->tm_sec);
    FUNC11(L, "min", stm->tm_min);
    FUNC11(L, "hour", stm->tm_hour);
    FUNC11(L, "day", stm->tm_mday);
    FUNC11(L, "month", stm->tm_mon+1);
    FUNC11(L, "year", stm->tm_year+1900);
    FUNC11(L, "wday", stm->tm_wday+1);
    FUNC11(L, "yday", stm->tm_yday+1);
    FUNC10(L, "isdst", stm->tm_isdst);
  }
  else {
    char cc[3];
    luaL_Buffer b;
    cc[0] = '%'; cc[2] = '\0';
    FUNC4(L, &b);
    for (; *s; s++) {
      if (*s != '%' || *(s + 1) == '\0')  /* no conversion specifier? */
        FUNC2(&b, *s);
      else {
        size_t reslen;
        char buff[200];  /* should be big enough for any conversion result */
        cc[1] = *(++s);
        reslen = FUNC13(buff, sizeof(buff), cc, stm);
        FUNC3(&b, buff, reslen);
      }
    }
    FUNC7(&b);
  }
  return 1;
}