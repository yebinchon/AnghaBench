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
typedef  int /*<<< orphan*/  sqlite3_blob ;
typedef  int /*<<< orphan*/  Tcl_Obj ;
typedef  int /*<<< orphan*/  Tcl_Interp ;
typedef  int /*<<< orphan*/  Tcl_Channel ;
typedef  scalar_t__ ClientData ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int TCL_ERROR ; 
 int TCL_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 scalar_t__ FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(
  Tcl_Interp *interp, 
  Tcl_Obj *pObj,
  sqlite3_blob **ppBlob
){
  char *z;
  int n;

  z = FUNC3(pObj, &n);
  if( n==0 ){
    *ppBlob = 0;
  }else if( n>9 && 0==FUNC5("incrblob_", z, 9) ){
    int notUsed;
    Tcl_Channel channel;
    ClientData instanceData;
    
    channel = FUNC1(interp, z, &notUsed);
    if( !channel ) return TCL_ERROR;

    FUNC0(channel);
    FUNC4(channel, 0, SEEK_SET);

    instanceData = FUNC2(channel);
    *ppBlob = *((sqlite3_blob **)instanceData);
  }else{
    *ppBlob = (sqlite3_blob*)FUNC6(z);
  }

  return TCL_OK;
}