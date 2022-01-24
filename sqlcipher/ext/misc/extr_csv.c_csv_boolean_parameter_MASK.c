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
 int FUNC0 (char const*) ; 
 char* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,int) ; 

__attribute__((used)) static int FUNC3(
  const char *zTag,       /* Tag we are looking for */
  int nTag,               /* Size of the tag in bytes */
  const char *z,          /* Input parameter */
  int *pValue             /* Write boolean value here */
){
  int b;
  z = FUNC1(z);
  if( FUNC2(zTag, z, nTag)!=0 ) return 0;
  z = FUNC1(z + nTag);
  if( z[0]==0 ){
    *pValue = 1;
    return 1;
  }
  if( z[0]!='=' ) return 0;
  z = FUNC1(z+1);
  b = FUNC0(z);
  if( b>=0 ){
    *pValue = b;
    return 1;
  }
  return 0;
}