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
typedef  scalar_t__ synctex_node_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,void*,...) ; 
 char* FUNC6 (scalar_t__) ; 

void FUNC7(synctex_node_t sheet) {
	if (sheet) {
		FUNC5("%s:%i\n",FUNC6(sheet),FUNC2(sheet));
		FUNC5("SELF:%p",(void *)sheet);
		FUNC5(" SYNCTEX_PARENT:%p",(void *)FUNC3(sheet));
		FUNC5(" SYNCTEX_CHILD:%p",(void *)FUNC0(sheet));
		FUNC5(" SYNCTEX_SIBLING:%p",(void *)FUNC4(sheet));
		FUNC5(" SYNCTEX_FRIEND:%p\n",(void *)FUNC1(sheet));
	}
}