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
typedef  size_t strm_int ;
typedef  int /*<<< orphan*/  strm_array ;

/* Variables and functions */
 scalar_t__ STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_value* v;
  strm_int len;
  strm_value func;
  strm_int i;
  strm_array a2;
  strm_value* v2;

  FUNC4(strm, argc, args, "av", &v, &len, &func);
  a2 = FUNC0(NULL, len);
  v2 = FUNC1(a2);

  for (i=0; i<len; i++) {
    if (FUNC3(strm, func, 1, &v[i], &v2[i]) == STRM_NG) {
      return STRM_NG;
    }
  }
  *ret = FUNC2(a2);
  return STRM_OK;
}