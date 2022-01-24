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
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int INT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int,int) ; 
#define  WB_ISDELIMITER 132 
#define  WB_LEFT 131 
#define  WB_MOVEWORDLEFT 130 
#define  WB_MOVEWORDRIGHT 129 
#define  WB_RIGHT 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC3(LPWSTR s, INT start, INT len, INT code)
{
  /* FIXME: Native also knows about punctuation */
  FUNC1("s==%s, start==%d, len==%d, code==%d\n",
        FUNC2(s, len), start, len, code);

  switch (code)
  {
    case WB_ISDELIMITER:
      return FUNC0(s[start]);
    case WB_LEFT:
    case WB_MOVEWORDLEFT:
      while (start && FUNC0(s[start - 1]))
        start--;
      while (start && !FUNC0(s[start - 1]))
        start--;
      return start;
    case WB_RIGHT:
    case WB_MOVEWORDRIGHT:
      while (start < len && !FUNC0(s[start]))
        start++;
      while (start < len && FUNC0(s[start]))
        start++;
      return start;
  }
  return 0;
}