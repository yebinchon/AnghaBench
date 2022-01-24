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
typedef  int const byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 scalar_t__ FUNC3 (char*) ; 

int FUNC4(vbuf *vb, const byte *buf, int len) {
  char qbuf[10];
  int i, ch;

  while (len) {
    qbuf[0]= 0;
    for (i=0; i<len; i++) {
      ch= buf[i];
      if (ch <= ' ' || ch >= 127) {
	FUNC2(qbuf,"\\%03o",ch);
	break;
      } else if (!FUNC1(ch)) {
	FUNC2(qbuf,"\\%c",ch);
	break;
      }
    }
    if (!FUNC0(vb,buf,i) || !FUNC0(vb,(byte*)qbuf,(int)  FUNC3(qbuf)))
      return 0;
    if (i<len) i++;
    buf+= i;
    len-= i;
  }
  return 1;
}