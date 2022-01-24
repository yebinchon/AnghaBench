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
 int TCL_OK ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*,void*) ; 

int FUNC1(Tcl_Interp *interp, char *zPtr, void *p){
  FUNC0(100, zPtr, "%p", p);
  return TCL_OK;
}