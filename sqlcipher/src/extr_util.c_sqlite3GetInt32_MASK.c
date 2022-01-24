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
typedef  int u32 ;
typedef  int sqlite_int64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 int FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 scalar_t__ FUNC3 (char const) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5(const char *zNum, int *pValue){
  sqlite_int64 v = 0;
  int i, c;
  int neg = 0;
  if( zNum[0]=='-' ){
    neg = 1;
    zNum++;
  }else if( zNum[0]=='+' ){
    zNum++;
  }
#ifndef SQLITE_OMIT_HEX_INTEGER
  else if( zNum[0]=='0'
        && (zNum[1]=='x' || zNum[1]=='X')
        && FUNC3(zNum[2])
  ){
    u32 u = 0;
    zNum += 2;
    while( zNum[0]=='0' ) zNum++;
    for(i=0; FUNC3(zNum[i]) && i<8; i++){
      u = u*16 + FUNC1(zNum[i]);
    }
    if( (u&0x80000000)==0 && FUNC3(zNum[i])==0 ){
      FUNC0(pValue, &u, 4);
      return 1;
    }else{
      return 0;
    }
  }
#endif
  if( !FUNC2(zNum[0]) ) return 0;
  while( zNum[0]=='0' ) zNum++;
  for(i=0; i<11 && (c = zNum[i] - '0')>=0 && c<=9; i++){
    v = v*10 + c;
  }

  /* The longest decimal representation of a 32 bit integer is 10 digits:
  **
  **             1234567890
  **     2^31 -> 2147483648
  */
  FUNC4( i==10 );
  if( i>10 ){
    return 0;
  }
  FUNC4( v-neg==2147483647 );
  if( v-neg>2147483647 ){
    return 0;
  }
  if( neg ){
    v = -v;
  }
  *pValue = (int)v;
  return 1;
}