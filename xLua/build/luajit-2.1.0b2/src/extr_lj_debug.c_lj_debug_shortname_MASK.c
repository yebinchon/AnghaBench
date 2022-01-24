#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int len; } ;
typedef  TYPE_1__ GCstr ;
typedef  int /*<<< orphan*/  BCLine ;

/* Variables and functions */
 int LUA_IDSIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 char* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 

void FUNC3(char *out, GCstr *str, BCLine line)
{
  const char *src = FUNC1(str);
  if (*src == '=') {
    FUNC2(out, src+1, LUA_IDSIZE);  /* Remove first char. */
    out[LUA_IDSIZE-1] = '\0';  /* Ensures null termination. */
  } else if (*src == '@') {  /* Output "source", or "...source". */
    size_t len = str->len-1;
    src++;  /* Skip the `@' */
    if (len >= LUA_IDSIZE) {
      src += len-(LUA_IDSIZE-4);  /* Get last part of file name. */
      *out++ = '.'; *out++ = '.'; *out++ = '.';
    }
    FUNC0(out, src);
  } else {  /* Output [string "string"] or [builtin:name]. */
    size_t len;  /* Length, up to first control char. */
    for (len = 0; len < LUA_IDSIZE-12; len++)
      if (((const unsigned char *)src)[len] < ' ') break;
    FUNC0(out, line == ~(BCLine)0 ? "[builtin:" : "[string \""); out += 9;
    if (src[len] != '\0') {  /* Must truncate? */
      if (len > LUA_IDSIZE-15) len = LUA_IDSIZE-15;
      FUNC2(out, src, len); out += len;
      FUNC0(out, "..."); out += 3;
    } else {
      FUNC0(out, src); out += len;
    }
    FUNC0(out, line == ~(BCLine)0 ? "]" : "\"]");
  }
}