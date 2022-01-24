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
struct optioninfo {int type; int* storep; int value; int /*<<< orphan*/  (* func ) (struct optioninfo const*,char const*,char const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct optioninfo const*) ; 
#define  ot_flag 132 
#define  ot_func 131 
#define  ot_funcarg 130 
#define  ot_funcarg2 129 
#define  ot_value 128 
 int /*<<< orphan*/  FUNC3 (struct optioninfo const*,char const*,char const*) ; 

void FUNC4(const struct optioninfo *oip, int invert,
	    const char *arg, const char *arg2) {
  switch (oip->type) {
  case ot_flag:
    FUNC1(!arg);
    *oip->storep= !invert;
    return;
  case ot_value:
    FUNC1(!arg);
    if (invert) FUNC2(oip);
    *oip->storep= oip->value;
    return;
  case ot_func: case ot_funcarg: case ot_funcarg2:
    if (invert) FUNC2(oip);
    oip->func(oip,arg,arg2);
    return;
  default:
    FUNC0();
  }
}