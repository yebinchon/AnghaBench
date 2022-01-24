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
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 int /*<<< orphan*/  _TRUNCATE ; 
 int FUNC0 (char*,size_t,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,size_t,char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,size_t,char const*,int /*<<< orphan*/ ) ; 

int FUNC3(char *s, size_t n, const char *fmt, va_list v)
{
   int res;
   #ifdef _WIN32
      #ifdef __STDC_WANT_SECURE_LIB__
      res = _vsnprintf_s(s, n, _TRUNCATE, fmt, v);
      #else
      res = stb_p_vsnprintf(s,n,fmt,v);
      #endif
   #else
   res = FUNC2(s,n,fmt,v);
   #endif
   if (n) s[n-1] = 0;
   // Unix returns length output would require, Windows returns negative when truncated.
   return (res >= (int) n || res < 0) ? -1 : res;
}