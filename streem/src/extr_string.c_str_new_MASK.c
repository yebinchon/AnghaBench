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
struct strm_string {char const* ptr; int len; } ;
typedef  int strm_value ;
typedef  int strm_string ;
typedef  int strm_int ;

/* Variables and functions */
 int STRM_TAG_STRING_6 ; 
 int STRM_TAG_STRING_F ; 
 int STRM_TAG_STRING_I ; 
 int STRM_TAG_STRING_O ; 
 int STRM_VAL_MASK ; 
 char* FUNC0 (int) ; 
 struct strm_string* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int FUNC5 (struct strm_string*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static strm_string
FUNC6(const char* p, strm_int len, int foreign)
{
  strm_value tag;
  strm_value val;
  char* s;

  if (!p) goto mkbuf;
  if (len < 6) {
    tag = STRM_TAG_STRING_I;
    val = 0;
    s = FUNC0(val)+1;
    FUNC2(s, p, len);
    s[-1] = len;
  }
  else if (len == 6) {
    tag = STRM_TAG_STRING_6;
    val = 0;
    s = FUNC0(val);
    FUNC2(s, p, len);
  }
  else {
    struct strm_string* str;

    if (p && (foreign || FUNC4(p))) {
      tag = STRM_TAG_STRING_F;
      str = FUNC1(sizeof(struct strm_string));
      str->ptr = p;
    }
    else {
      char *buf;

    mkbuf:
      tag = STRM_TAG_STRING_O;
      str = FUNC1(sizeof(struct strm_string)+len+1);
      buf = (char*)&str[1];
      if (p) {
        FUNC2(buf, p, len);
      }
      else {
        FUNC3(buf, 0, len);
      }
      buf[len] = '\0';
      str->ptr = buf;
    }
    str->len = len;
    val = FUNC5(str, 0);
  }
  return tag | (val & STRM_VAL_MASK);
}