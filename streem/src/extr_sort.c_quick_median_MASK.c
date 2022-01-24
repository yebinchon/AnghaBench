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
typedef  size_t strm_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (double) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 double FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static strm_value
FUNC4(strm_value *p, int len)
{
  strm_value v = FUNC0(p, len);

  if (len%2 == 0 && FUNC2(v)) {
    strm_int next = len/2;
    if (FUNC2(p[next])) {
       double x = FUNC3(v);
       double y = FUNC3(p[next]);

       return FUNC1((x + y)/2);
    }
  }
  return v;
}