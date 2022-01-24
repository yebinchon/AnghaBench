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
 int /*<<< orphan*/  FUNC0 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(
  unsigned char *aData,      /* Content being decoded */
  int ofst, int nByte,       /* Start and size of decode */
  const char *zMsg           /* Message to append */
){
  int i, j;
  int val = aData[ofst];
  char zBuf[100];
  FUNC1(zBuf, " %03x: %02x", ofst, aData[ofst]);
  i = (int)FUNC2(zBuf);
  for(j=1; j<4; j++){
    if( j>=nByte ){
      FUNC1(&zBuf[i], "   ");
    }else{
      FUNC1(&zBuf[i], " %02x", aData[ofst+j]);
      val = val*256 + aData[ofst+j];
    }
    i += (int)FUNC2(&zBuf[i]);
  }
  FUNC1(&zBuf[i], "   %9d", val);
  FUNC0("%s  %s\n", zBuf, zMsg);
}