#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int eVal; scalar_t__ zName; } ;
typedef  TYPE_1__ Fts5Enum ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 scalar_t__ FUNC0 (scalar_t__,char const*,int) ; 
 scalar_t__ FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(
  const Fts5Enum *aEnum, 
  const char *zEnum, 
  int *peVal
){
  int nEnum = (int)FUNC1(zEnum);
  int i;
  int iVal = -1;

  for(i=0; aEnum[i].zName; i++){
    if( FUNC0(aEnum[i].zName, zEnum, nEnum)==0 ){
      if( iVal>=0 ) return SQLITE_ERROR;
      iVal = aEnum[i].eVal;
    }
  }

  *peVal = iVal;
  return iVal<0 ? SQLITE_ERROR : SQLITE_OK;
}