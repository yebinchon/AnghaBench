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
typedef  int /*<<< orphan*/  readbuf ;

/* Variables and functions */
 int EAGAIN ; 
 int EINTR ; 
 int* addrtextbuf ; 
 scalar_t__ bracket ; 
 int* bytes ; 
 int cbyte ; 
 int /*<<< orphan*/  inbuf ; 
 int inbyte ; 
 int inputeof ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void) {
  char readbuf[512], *p;
  int r, c, nbyte;

  while ((r= FUNC3(0,readbuf,sizeof(readbuf))) <= 0) {
    if (r == 0) { inputeof= 1; return; }
    if (r == EAGAIN) return;
    if (r != EINTR) FUNC6("read stdin");
  }
  for (p=readbuf; r>0; r--,p++) {
    c= *p;
    if (cbyte==-1 && bracket && c=='[') {
      addrtextbuf[inbuf++]= c;
      FUNC5();
    } else if (cbyte==-1 && !bracket && !FUNC0(c)) {
      FUNC2(c);
      FUNC5();
    } else if (cbyte>=0 && inbyte<3 && c>='0' && c<='9' &&
	       (nbyte= bytes[cbyte]*10 + (c-'0')) <= 255) {
      bytes[cbyte]= nbyte;
      addrtextbuf[inbuf++]= c;
      inbyte++;
    } else if (cbyte>=0 && cbyte<3 && inbyte>0 && c=='.') {
      bytes[++cbyte]= 0;
      addrtextbuf[inbuf++]= c;
      inbyte= 0;
    } else if (cbyte==3 && inbyte>0 && bracket && c==']') {
      addrtextbuf[inbuf++]= c;
      FUNC1();
    } else if (cbyte==3 && inbyte>0 && !bracket && !FUNC0(c)) {
      FUNC1();
      FUNC2(c);
      FUNC5();
    } else {
      FUNC4();
      FUNC2(c);
      cbyte= -1;
      if (!bracket && !FUNC0(c)) FUNC5();
    }
  }
}