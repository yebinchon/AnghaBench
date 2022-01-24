#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * k; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_1__ Proto ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 char* FUNC2 (TYPE_1__*,int,int,char const**) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5 (Proto *p, int pc, int c, const char **name) {
  if (FUNC1(c)) {  /* is 'c' a constant? */
    TValue *kvalue = &p->k[FUNC0(c)];
    if (FUNC4(kvalue)) {  /* literal constant? */
      *name = FUNC3(kvalue);  /* it is its own name */
      return;
    }
    /* else no reasonable name found */
  }
  else {  /* 'c' is a register */
    const char *what = FUNC2(p, pc, c, name); /* search for 'c' */
    if (what && *what == 'c') {  /* found a constant name? */
      return;  /* 'name' already filled */
    }
    /* else no reasonable name found */
  }
  *name = "?";  /* no reasonable name found */
}