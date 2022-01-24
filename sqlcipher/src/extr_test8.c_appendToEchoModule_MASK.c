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
typedef  int /*<<< orphan*/  Tcl_Interp ;

/* Variables and functions */
 int TCL_APPEND_VALUE ; 
 int TCL_GLOBAL_ONLY ; 
 int TCL_LIST_ELEMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,int) ; 

__attribute__((used)) static void FUNC1(Tcl_Interp *interp, const char *zArg){
  int flags = (TCL_APPEND_VALUE | TCL_LIST_ELEMENT | TCL_GLOBAL_ONLY);
  FUNC0(interp, "echo_module", (zArg?zArg:""), flags);
}