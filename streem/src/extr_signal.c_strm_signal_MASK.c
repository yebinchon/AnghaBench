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
typedef  int /*<<< orphan*/  strm_sighandler_t ;
typedef  scalar_t__ sighandler_t ;

/* Variables and functions */
 scalar_t__ SIG_ERR ; 
 scalar_t__ SIG_IGN ; 
 int STRM_NG ; 
 int STRM_OK ; 
 int FUNC0 (int,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ handler ; 
 int /*<<< orphan*/  sigcall ; 
 scalar_t__ FUNC1 (int,scalar_t__) ; 

int
FUNC2(int sig, strm_sighandler_t func, void* arg)
{
  sighandler_t r = FUNC1(sig, SIG_IGN);

  if (r == SIG_ERR) return STRM_NG;
  if (r && r != handler) {
    if (FUNC0(sig, sigcall, (void*)r) == STRM_NG)
      return STRM_NG;
  }
  if (FUNC0(sig, func, arg) == STRM_NG)
    return STRM_NG;
  r = FUNC1(sig, handler);
  if (r == SIG_ERR) return STRM_NG;
  return STRM_OK;
}