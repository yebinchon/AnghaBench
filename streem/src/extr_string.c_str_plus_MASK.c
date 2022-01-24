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
typedef  int /*<<< orphan*/  strm_stream ;

/* Variables and functions */
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_string str1, str2, str3;
  char *p;

  FUNC1(strm, argc, args, "SS", &str1, &str2);
  str3 = FUNC3(NULL, FUNC2(str1) + FUNC2(str2));

  p = (char*)FUNC4(str3);
  FUNC0(p, FUNC4(str1), FUNC2(str1));
  FUNC0(p+FUNC2(str1), FUNC4(str2), FUNC2(str2));
  p[FUNC2(str3)] = '\0';
  *ret = FUNC5(str3);
  return STRM_OK;
}