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

/* Variables and functions */
 int STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC7(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_value* buf;
  strm_value* p;
  strm_int len;
  strm_value func;
  strm_int i;

  FUNC5(strm, argc, args, "a|v", &p, &len, &func);

  if (len == 0) {
    FUNC6(strm, "empty array");
    return STRM_NG;
  }
  buf = FUNC1(sizeof(strm_value)*len);
  if (!buf) return STRM_NG;
  if (argc == 1) {              /* median(ary) */
    FUNC2(buf, p, sizeof(strm_value)*len);
  }
  else {                        /* median(ary,func) */
    strm_value func = args[1];

    for (i=0; i<len; i++) {
      if (FUNC4(strm, func, 1, &p[i], &buf[i]) == STRM_NG) {
        FUNC0(buf);
        return STRM_NG;
      }
    }
  }
  *ret = FUNC3(buf, len);
  FUNC0(buf);
  return STRM_OK;
}