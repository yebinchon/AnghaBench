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
struct TYPE_4__ {scalar_t__* zErr; } ;
typedef  TYPE_1__ CsvReader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,...) ; 
 char* FUNC2 (char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(
  CsvReader *p,            /* Leave the error message here, if there is one */
  const char *zParam,      /* Parameter we are checking for */
  const char *zArg,        /* Raw text of the virtual table argment */
  char **pzVal             /* Write the dequoted string value here */
){
  const char *zValue;
  zValue = FUNC2(zParam,(int)FUNC5(zParam),zArg);
  if( zValue==0 ) return 0;
  p->zErr[0] = 0;
  if( *pzVal ){
    FUNC1(p, "more than one '%s' parameter", zParam);
    return 1;
  }
  *pzVal = FUNC4("%s", zValue);
  if( *pzVal==0 ){
    FUNC1(p, "out of memory");
    return 1;
  }
  FUNC3(*pzVal);
  FUNC0(*pzVal);
  return 1;
}