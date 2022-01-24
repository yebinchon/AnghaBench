#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sigaction {scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  TYPE_1__* adns_state ;
struct TYPE_3__ {int iflags; int /*<<< orphan*/  stdsigpipe; int /*<<< orphan*/  stdsigmask; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int adns_if_nosigpipe ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(adns_state ads) {
#ifndef ADNS_JGAA_WIN32
  sigset_t toblock;
  struct sigaction sa;
  int r;

  if (ads->iflags & adns_if_nosigpipe) return;

  FUNC3(&toblock);
  FUNC2(&toblock,SIGPIPE);

  sa.sa_handler= SIG_IGN;
  FUNC3(&sa.sa_mask);
  sa.sa_flags= 0;

  r= FUNC4(SIG_SETMASK,&toblock,&ads->stdsigmask); FUNC0(!r);
  r= FUNC1(SIGPIPE,&sa,&ads->stdsigpipe); FUNC0(!r);
#endif
}