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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int address ; 
 int /*<<< orphan*/  adns_if_debug ; 
 int /*<<< orphan*/  adns_r_ptr_raw ; 
 int bracket ; 
 char const* config_text ; 
 int forever ; 
 int /*<<< orphan*/  initflags ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rrt ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(const char *const *argv) {
  const char *arg;
  int c;

  while ((arg= *++argv)) {
    if (arg[0] != '-') FUNC5("no non-option arguments are allowed");
    if (arg[1] == '-') {
      if (!FUNC3(arg,"--timeout")) {
	if (!(arg= *++argv)) FUNC5("--timeout needs a value");
	FUNC2(arg);
	forever= 0;
      } else if (!FUNC3(arg,"--wait")) {
	forever= 1;
      } else if (!FUNC3(arg,"--brackets")) {
	bracket= 1;
      } else if (!FUNC3(arg,"--address")) {
	address= 1;
      } else if (!FUNC3(arg,"--unchecked")) {
	rrt= adns_r_ptr_raw;
      } else if (!FUNC3(arg,"--config")) {
	if (!(arg= *++argv)) FUNC5("--config needs a value");
	config_text= arg;
      } else if (!FUNC3(arg,"--debug")) {
	initflags |= adns_if_debug;
      } else if (!FUNC3(arg,"--help")) {
	FUNC4(); FUNC1(0);
      } else if (!FUNC3(arg,"--version")) {
	FUNC0("adnsresfilter"); FUNC1(0);
      } else {
	FUNC5("unknown long option");
      }
    } else {
      while ((c= *++arg)) {
	switch (c) {
	case 't':
	  if (*++arg) FUNC2(arg);
	  else if ((arg= *++argv)) FUNC2(arg);
	  else FUNC5("-t needs a value");
	  forever= 0;
	  arg= "\0";
	  break;
	case 'w':
	  forever= 1;
	  break;
	case 'b':
	  bracket= 1;
	  break;
	case 'a':
	  address= 1;
	  break;
	case 'u':
	  rrt= adns_r_ptr_raw;
	  break;
	case 'h':
	  FUNC4();
	  FUNC1(0);
	default:
	  FUNC5("unknown short option");
	}
      }
    }
  }
}