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
typedef  int /*<<< orphan*/  Tcl_Obj ;
typedef  int /*<<< orphan*/  Tcl_Interp ;

/* Variables and functions */
 int TCL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ * const*,char*) ; 

__attribute__((used)) static int FUNC1(
  Tcl_Interp *interp,
  Tcl_Obj *const*objv
){
  FUNC0(interp, 1, objv,
    "HANDLE ?FILENAME? ?-vfs VFSNAME? ?-readonly BOOLEAN? ?-create BOOLEAN?"
    " ?-nomutex BOOLEAN? ?-fullmutex BOOLEAN? ?-uri BOOLEAN?"
#if defined(SQLITE_HAS_CODEC) && !defined(SQLITE_OMIT_CODEC_FROM_TCL)
    " ?-key CODECKEY?"
#endif
  );
  return TCL_ERROR;
}