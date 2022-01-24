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
typedef  int /*<<< orphan*/  strm_string ;
typedef  int strm_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char const) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static strm_int
FUNC3(strm_string str)
{
  strm_int len = 2;             /* first and last quotes */
  const unsigned char *p = (unsigned char*)FUNC2(str);
  const unsigned char *pend = p + FUNC1(str);

  while (p < pend) {
    switch (*p) {
    case '\n': case '\r': case '\t': case '"':
      len += 2;
      break;
    default:
      if (FUNC0(*p) || (*p&0xff) > 0x7f) {
        len++;
      }
      else {
        len += 3;
      }
    }
    p++;
  }
  return len;
}