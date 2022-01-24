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
typedef  int /*<<< orphan*/  strm_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static strm_string
FUNC6(strm_string str, strm_int len)
{
  char *buf = FUNC1(len);
  char *s = buf;
  char *p = (char*)FUNC5(str);
  char *pend = p + FUNC3(str);

  *s++ = '"';
  while (p<pend) {
    switch (*p) {
    case '\n':
      *s++ = '\\';
      *s++ = 'n';
      break;
    case '\r':
      *s++ = '\\';
      *s++ = 'r';
      break;
    case '\t':
      *s++ = '\\';
      *s++ = 't';
      break;
    case 033:
      *s++ = '\\';
      *s++ = 'e';
      break;
    case '\0':
      *s++ = '\\';
      *s++ = '0';
      break;
    case '"':
      *s++ = '\\';
      *s++ = '"';
      break;
    default:
      if (FUNC0((int)*p) || (*p&0xff) > 0x7f) {
        *s++ = (*p&0xff);
      }
      else {
        FUNC2(s, "\\x%02x", (int)*p&0xff);
        s+=4;
      }
    }
    p++;
  }
  *s++ = '"';
  
  return FUNC4(buf, len);
}