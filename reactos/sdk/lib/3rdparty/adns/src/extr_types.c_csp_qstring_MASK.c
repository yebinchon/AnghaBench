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
typedef  int /*<<< orphan*/  vbuf ;
typedef  int /*<<< orphan*/  adns_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  R_NOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  adns_s_ok ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned char) ; 

__attribute__((used)) static adns_status FUNC3(vbuf *vb, const char *dp, int len) {
  unsigned char ch;
  char buf[10];
  int cn;

  FUNC0("\"");
  for (cn=0; cn<len; cn++) {
    ch= *dp++;
    if (ch == '\\') {
      FUNC0("\\\\");
    } else if (ch == '"') {
      FUNC0("\\\"");
    } else if (ch >= 32 && ch <= 126) {
      if (!FUNC1(vb,&ch,1)) R_NOMEM;
    } else {
      FUNC2(buf,"\\x%02x",ch);
      FUNC0(buf);
    }
  }
  FUNC0("\"");

  return adns_s_ok;
}