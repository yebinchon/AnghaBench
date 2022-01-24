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
struct strm_array {size_t len; int /*<<< orphan*/ * ptr; scalar_t__ headers; } ;
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_stream ;
typedef  size_t strm_int ;

/* Variables and functions */
 int STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 struct strm_array* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(strm_stream* strm, strm_value ary, int argc, strm_value* argv, strm_value* ret)
{
  struct strm_array* a;
  strm_value idx;

  if (argc != 1) {
    FUNC3(strm, "wrong number of arguments");
    return STRM_NG;
  }

  a = FUNC1(ary);
  idx = argv[0];
  if (FUNC2(idx)) {
    strm_int i = FUNC6(idx);

    if (i>=a->len)
      return STRM_NG;
    *ret = a->ptr[i];
    return STRM_OK;
  }
  if (FUNC5(idx)) {
    if (a->headers) {
      strm_int i, len = a->len;

      for (i=0; i<len; i++) {
        if (FUNC4(FUNC7(idx),
                        FUNC7(FUNC0(a->headers)[i]))) {
          *ret = a->ptr[i];
          return STRM_OK;
        }
      }
    }
  }
  return STRM_NG;
}