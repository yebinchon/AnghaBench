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
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(
  sqlite3_context *ctx,
  int nVal,
  sqlite3_value **apVal
){
  int nByte;                      /* Number of bytes to compare */
  int nRet = 0;                   /* Return value */
  const unsigned char *zL = FUNC2(apVal[0]);
  const unsigned char *zR = FUNC2(apVal[1]);
  int nL = FUNC1(apVal[0]);
  int nR = FUNC1(apVal[1]);
  int i;

  nByte = (nL > nR ? nL : nR);
  for(i=0; i<nByte; i++){
    if( zL[i]!=zR[i] ) break;
    if( (zL[i] & 0xC0)!=0x80 ) nRet++;
  }

  if( (zL[i] & 0xC0)==0x80 ) nRet--;
  FUNC0(ctx, nRet);
}