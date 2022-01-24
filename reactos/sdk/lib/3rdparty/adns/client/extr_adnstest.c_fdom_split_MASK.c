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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC2 (char*,char) ; 
 int FUNC3 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(const char *fdom, const char **dom_r, int *qf_r,
		       char *ownflags, int ownflags_l) {
  int qf;
  char *ep;

  qf= FUNC3(fdom,&ep,0);
  if (*ep == ',' && FUNC2(ep,'/')) {
    ep++;
    while (*ep != '/') {
      if (--ownflags_l <= 0) { FUNC0("too many flags\n",stderr); FUNC1(3); }
      *ownflags++= *ep++;
    }
  }
  if (*ep != '/') { *dom_r= fdom; *qf_r= 0; }
  else { *dom_r= ep+1; *qf_r= qf; }
  *ownflags= 0;
}