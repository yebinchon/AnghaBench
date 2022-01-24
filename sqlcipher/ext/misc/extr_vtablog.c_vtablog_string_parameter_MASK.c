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
 char* FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(
  char **pzErr,            /* Leave the error message here, if there is one */
  const char *zParam,      /* Parameter we are checking for */
  const char *zArg,        /* Raw text of the virtual table argment */
  char **pzVal             /* Write the dequoted string value here */
){
  const char *zValue;
  zValue = FUNC3(zParam,(int)FUNC1(zParam),zArg);
  if( zValue==0 ) return 0;
  if( *pzVal ){
    *pzErr = FUNC0("more than one '%s' parameter", zParam);
    return 1;
  }
  *pzVal = FUNC0("%s", zValue);
  if( *pzVal==0 ){
    *pzErr = FUNC0("out of memory");
    return 1;
  }
  FUNC4(*pzVal);
  FUNC2(*pzVal);
  return 0;
}