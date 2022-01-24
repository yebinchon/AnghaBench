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
typedef  int /*<<< orphan*/  strm_string ;
typedef  scalar_t__ strm_int ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(strm_value x, strm_value y)
{
  strm_string a = FUNC3(x);
  strm_string b = FUNC3(y);
  strm_int alen = FUNC1(a);
  strm_int blen = FUNC1(b);
  strm_int len, cmp;

  if (alen > blen) {
    len = blen;
  }
  else {
    len = alen;
  }
  cmp = FUNC0(FUNC2(a), FUNC2(b), len);
  if (cmp == 0) {
    if (alen > len) return 1;
    if (blen > len) return -1;
  }
  return cmp;
}