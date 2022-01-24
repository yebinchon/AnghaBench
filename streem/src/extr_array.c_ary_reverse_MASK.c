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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,int*) ; 

__attribute__((used)) static int
FUNC4(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_value* v;
  strm_value* v2;
  strm_int len;
  strm_array ary;
  strm_int i;

  FUNC3(strm, argc, args, "a", &v, &len);
  ary = FUNC0(NULL, len);
  v2 = FUNC1(ary);
  for (i=0; i<len; i++) {
    v2[len-i-1] = v[i];
  }
  *ret = FUNC2(ary);
  return STRM_OK;
}