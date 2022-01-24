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
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,void*,...) ; 
 char* FUNC9 (scalar_t__) ; 

void FUNC10(synctex_node_t node) {
	FUNC8("%s:%i,%i:%i,%i\n",
		FUNC9(node),
		FUNC6(node),
		FUNC3(node),
		FUNC2(node),
		FUNC7(node));
	FUNC8("SELF:%p",(void *)node);
	FUNC8(" SYNCTEX_PARENT:%p",(void *)FUNC4(node));
	FUNC8(" SYNCTEX_CHILD:%p",(void *)FUNC0(node));
	FUNC8(" SYNCTEX_SIBLING:%p",(void *)FUNC5(node));
	FUNC8(" SYNCTEX_FRIEND:%p\n",(void *)FUNC1(node));
}