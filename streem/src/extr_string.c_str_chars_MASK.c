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
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_stream ;
typedef  int strm_int ;
typedef  int /*<<< orphan*/  strm_array ;

/* Variables and functions */
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,char const**,int*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*) ; 

__attribute__((used)) static int
FUNC6(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  const char* str;
  const char* s;
  const char* prev = NULL;
  strm_int slen;
  strm_array ary;
  strm_int n = 0;
  strm_value* sps;
  strm_int i = 0;

  FUNC3(strm, argc, args, "s", &str, &slen);

  s = str;

  while (*s) {
    s += FUNC5(s, s + slen);
    n++;
  }

  ary = FUNC0(NULL, n);
  sps = FUNC1(ary);
  s = str;

  while (*s) {
    prev = s;
    s += FUNC5(s, s + slen);
    sps[i++] = FUNC4(prev, s - prev);
  }

  *ret = FUNC2(ary);
  return STRM_OK;
}