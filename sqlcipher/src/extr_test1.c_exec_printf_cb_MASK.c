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
typedef  int /*<<< orphan*/  Tcl_DString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(void *pArg, int argc, char **argv, char **name){
  Tcl_DString *str = (Tcl_DString*)pArg;
  int i;

  if( FUNC1(str)==0 ){
    for(i=0; i<argc; i++){
      FUNC0(str, name[i] ? name[i] : "NULL");
    }
  }
  for(i=0; i<argc; i++){
    FUNC0(str, argv[i] ? argv[i] : "NULL");
  }
  return 0;
}