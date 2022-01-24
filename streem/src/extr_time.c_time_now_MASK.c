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
struct timeval {int dummy; } ;
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_stream ;
typedef  int /*<<< orphan*/  strm_int ;

/* Variables and functions */
 int STRM_NG ; 
 int TZ_FAIL ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*,int /*<<< orphan*/ *) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (struct timeval*,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct timeval tv;
  int utc_offset;

  if (argc == 0) {
    utc_offset = FUNC5(0);
  }
  else {
    char *s;
    strm_int slen;

    FUNC2(strm, argc, args, "s", &s, &slen);
    utc_offset = FUNC1(s, slen);
    if (utc_offset == TZ_FAIL) {
      FUNC3(strm, "wrong timezeone");
      return STRM_NG;
    }
  }
  FUNC0(&tv, NULL);
  return FUNC4(&tv, utc_offset, ret);
}