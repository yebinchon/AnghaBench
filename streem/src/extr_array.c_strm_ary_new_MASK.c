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
struct strm_array {int* ptr; int len; int /*<<< orphan*/  headers; int /*<<< orphan*/ * ns; } ;
typedef  int strm_value ;
typedef  int strm_int ;
typedef  int strm_array ;

/* Variables and functions */
 int STRM_TAG_ARRAY ; 
 intptr_t STRM_VAL_MASK ; 
 struct strm_array* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  strm_ary_null ; 

strm_array
FUNC3(const strm_value* p, strm_int len)
{
  struct strm_array* ary;
  strm_value *buf;

  ary = FUNC0(sizeof(struct strm_array)+sizeof(strm_value)*len);
  buf = (strm_value*)&ary[1];

  if (p) {
    FUNC1(buf, p, sizeof(strm_value)*len);
  }
  else {
    FUNC2(buf, 0, sizeof(strm_value)*len);
  }
  ary->ptr = buf;
  ary->len = len;
  ary->ns = NULL;
  ary->headers = strm_ary_null;
  return STRM_TAG_ARRAY | (strm_value)((intptr_t)ary & STRM_VAL_MASK);
}