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
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (char const*,char const*,int) ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static const char *FUNC3(const char *zKey, const char *zStr){
  int nKey = (int)FUNC2(zKey);
  int nStr = (int)FUNC2(zStr);
  int i;
  if( nStr<nKey+1 ) return 0;
  if( FUNC1(zStr, zKey, nKey)!=0 ) return 0;
  for(i=nKey; FUNC0((unsigned char)zStr[i]); i++){}
  if( zStr[i]!='=' ) return 0;
  i++;
  while( FUNC0((unsigned char)zStr[i]) ){ i++; }
  return zStr+i;
}