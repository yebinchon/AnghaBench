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

/* Variables and functions */
 scalar_t__ EINTR ; 
 int avail ; 
 char* buf ; 
 scalar_t__ errno ; 
 char* FUNC0 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 scalar_t__ ov_pipe ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC4 (char*,int) ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__) ; 
 int used ; 

__attribute__((used)) static void FUNC7(void) {
  int anydone, r;
  char *newline, *space;

  anydone= 0;
  while (!anydone || used) {
    while (!(newline= FUNC0(buf,'\n',used))) {
      if (used == avail) {
	avail += 20; avail <<= 1;
	buf= FUNC4(buf,avail);
	if (!buf) FUNC6("realloc stdin buffer",errno);
      }
      do {
	r= FUNC3(0,buf+used,avail-used);
      } while (r < 0 && errno == EINTR);
      if (r == 0) {
	if (used) {
	  /* fake up final newline */
	  buf[used++]= '\n';
	  r= 1;
	} else {
	  ov_pipe= 0;
	  return;
	}
      }
      if (r < 0) FUNC6("read stdin",errno);
      used += r;
    }
    *newline++= 0;
    space= FUNC5(buf,' ');
    if (space) *space++= 0;
    FUNC2(buf,0,space);
    used -= (newline-buf);
    FUNC1(buf,newline,used);
    anydone= 1;
  }
}