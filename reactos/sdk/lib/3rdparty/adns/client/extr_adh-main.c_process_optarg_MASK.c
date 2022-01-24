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
struct optioninfo {scalar_t__ type; int /*<<< orphan*/  sopt; int /*<<< orphan*/  lopt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const* const**) ; 
 int /*<<< orphan*/  FUNC1 (struct optioninfo const*,int,char const*,char const*) ; 
 struct optioninfo* FUNC2 (char const*) ; 
 struct optioninfo* FUNC3 (char const**) ; 
 scalar_t__ ot_funcarg ; 
 scalar_t__ ot_funcarg2 ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void FUNC7(const char *arg,
			   const char *const **argv_p,
			   const char *value) {
  const struct optioninfo *oip;
  const char *arg2;
  int invert;

  if (arg[0] == '-' || arg[0] == '+') {
    if (arg[0] == '-' && arg[1] == '-') {
      if (!FUNC5(arg,"--no-",5)) {
	invert= 1;
	oip= FUNC2(arg+5);
      } else {
	invert= 0;
	oip= FUNC2(arg+2);
      }
      if (oip->type == ot_funcarg) {
	arg= argv_p ? *++(*argv_p) : value;
	if (!arg) FUNC6("option --%s requires a value argument",oip->lopt);
	arg2= 0;
      } else if (oip->type == ot_funcarg2) {
	FUNC0(argv_p);
	arg= *++(*argv_p);
	arg2= arg ? *++(*argv_p) : 0;
	if (!arg || !arg2)
	  FUNC6("option --%s requires two more arguments", oip->lopt);
      } else {
	if (value) FUNC6("option --%s does not take a value",oip->lopt);
	arg= 0;
	arg2= 0;
      }
      FUNC1(oip,invert,arg,arg2);
    } else if (arg[0] == '-' && arg[1] == 0) {
      arg= argv_p ? *++(*argv_p) : value;
      if (!arg) FUNC6("option `-' must be followed by a domain");
      FUNC4(arg);
    } else { /* arg[1] != '-', != '\0' */
      invert= (arg[0] == '+');
      ++arg;
      while (*arg) {
	oip= FUNC3(&arg);
	if (oip->type == ot_funcarg) {
	  if (!*arg) {
	    arg= argv_p ? *++(*argv_p) : value;
	    if (!arg) FUNC6("option -%s requires a value argument",oip->sopt);
	  } else {
	    if (value) FUNC6("two values for option -%s given !",oip->sopt);
	  }
	  FUNC1(oip,invert,arg,0);
	  arg= "";
	} else {
	  if (value) FUNC6("option -%s does not take a value",oip->sopt);
	  FUNC1(oip,invert,0,0);
	}
      }
    }
  } else { /* arg[0] != '-' */
    FUNC4(arg);
  }
}