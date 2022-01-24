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
typedef  size_t strm_int ;

/* Variables and functions */
#define  STRM_TAG_STRING_6 131 
#define  STRM_TAG_STRING_F 130 
#define  STRM_TAG_STRING_I 129 
#define  STRM_TAG_STRING_O 128 
 size_t* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

const char*
FUNC4(strm_string s, char buf[])
{
  strm_int len;

  switch (FUNC2(s)) {
  case STRM_TAG_STRING_I:
    len = FUNC0(s)[0];
    FUNC1(buf, FUNC0(s)+1, len);
    buf[len] = '\0';
    return buf;
  case STRM_TAG_STRING_6:
    FUNC1(buf, FUNC0(s), 6);
    buf[6] = '\0';
    return buf;
  case STRM_TAG_STRING_O:
  case STRM_TAG_STRING_F:
    {
      struct strm_string* str = (struct strm_string*)FUNC3(s);
      return str->ptr;
    }
  default:
    return NULL;
  }
}