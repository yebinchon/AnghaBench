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
typedef  int adns_initflags ;

/* Variables and functions */
 int /*<<< orphan*/  SIGPIPE ; 
 scalar_t__ SIG_ERR ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int adns_if_noautosys ; 
 int adns_if_noenv ; 
 int adns_if_nosigpipe ; 
 int FUNC0 (scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ ads ; 
 scalar_t__ config_text ; 
 int errno ; 
 scalar_t__ fmt_asynch ; 
 scalar_t__ fmt_default ; 
 scalar_t__ fmt_simple ; 
 scalar_t__ ov_asynch ; 
 int /*<<< orphan*/  ov_env ; 
 scalar_t__ ov_format ; 
 int ov_verbose ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

void FUNC4(void) {
  adns_initflags initflags;
  int r;

  if (ads) return;

#ifdef SIGPIPE
  if (signal(SIGPIPE,SIG_IGN) == SIG_ERR) sysfail("ignore SIGPIPE",errno);
#endif

  initflags= adns_if_noautosys|adns_if_nosigpipe|ov_verbose;
  if (!ov_env) initflags |= adns_if_noenv;

  if (config_text) {
    r= FUNC1(&ads, initflags, stderr, config_text);
  } else {
    r= FUNC0(&ads, initflags, 0);
  }
  if (r) FUNC3("adns_init",r);

  if (ov_format == fmt_default)
    ov_format= ov_asynch ? fmt_asynch : fmt_simple;
}