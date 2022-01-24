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

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int) ; 

int FUNC4(int nArg, char **azArg){
  int i;
  int nRand;
  if( nArg==0 ){
    nRand = 10;
  }else if( nArg==1 ){
    nRand = FUNC0(azArg[0]);
  }else{
    FUNC2("Usage: random ?N?\n");
    return -1;
  }
  for(i=0; i<nRand; i++){
    FUNC1("0x%x\n", FUNC3(i));
  }
  return 0;
}