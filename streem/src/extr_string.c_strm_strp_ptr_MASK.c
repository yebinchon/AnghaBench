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
struct strm_string {char const* ptr; } ;
typedef  int /*<<< orphan*/  strm_string ;

/* Variables and functions */
#define  STRM_TAG_STRING_6 131 
#define  STRM_TAG_STRING_F 130 
#define  STRM_TAG_STRING_I 129 
#define  STRM_TAG_STRING_O 128 
 char const* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

const char*
FUNC3(strm_string* s)
{
  switch (FUNC1(*s)) {
  case STRM_TAG_STRING_I:
    return FUNC0(s)+1;
  case STRM_TAG_STRING_6:
    return FUNC0(s);
  case STRM_TAG_STRING_O:
  case STRM_TAG_STRING_F:
    {
      struct strm_string* str = (struct strm_string*)FUNC2(*s);
      return str->ptr;
    }
  default:
    return NULL;
  }
}