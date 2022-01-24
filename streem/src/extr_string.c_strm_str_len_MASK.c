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
struct strm_string {int len; } ;
typedef  int /*<<< orphan*/  strm_string ;
typedef  int strm_int ;

/* Variables and functions */
#define  STRM_TAG_STRING_6 131 
#define  STRM_TAG_STRING_F 130 
#define  STRM_TAG_STRING_I 129 
#define  STRM_TAG_STRING_O 128 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

strm_int
FUNC3(strm_string s)
{
  switch (FUNC1(s)) {
  case STRM_TAG_STRING_I:
    return (strm_int)FUNC0(s)[0];
  case STRM_TAG_STRING_6:
    return 6;
  case STRM_TAG_STRING_O:
  case STRM_TAG_STRING_F:
    {
      struct strm_string* str = (struct strm_string*)FUNC2(s);

      return str->len;
    }
  default:
    return 0;
  }
}