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
struct sortby_value {int /*<<< orphan*/  o; int /*<<< orphan*/  v; } ;
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_stream ;
typedef  int strm_int ;
typedef  int /*<<< orphan*/  strm_array ;

/* Variables and functions */
 int STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sortby_value*) ; 
 struct sortby_value* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sortby_value*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sortby_cmp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct sortby_value* buf;
  strm_value* p;
  strm_int len;
  strm_value func;
  strm_array ary;
  strm_int i;

  FUNC7(strm, argc, args, "av", &p, &len, &func);

  buf = FUNC1(sizeof(struct sortby_value)*len);
  if (!buf) return STRM_NG;
  for (i=0; i<len; i++) {
    buf[i].o = p[i];
    if (FUNC6(strm, func, 1, &p[i], &buf[i].v) == STRM_NG) {
      FUNC0(buf);
      return STRM_NG;;
    }
  }
  FUNC2(buf, len, sizeof(struct sortby_value), sortby_cmp);
  ary = FUNC3(NULL, len);
  p = FUNC4(ary);
  for (i=0; i<len; i++) {
    p[i] = buf[i].o;
  }
  FUNC0(buf);
  *ret = FUNC5(ary);
  return STRM_OK;
}