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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static int FUNC4(char *aBuf, int *pnBuf){
  int ret = 0;
  int nBuf = *pnBuf;
  switch( aBuf[nBuf-2] ){
    
    case 'e': 
      if( nBuf>3 && 0==FUNC2("eed", &aBuf[nBuf-3], 3) ){
        if( FUNC0(aBuf, nBuf-3) ){
          FUNC3(&aBuf[nBuf-3], "ee", 2);
          *pnBuf = nBuf - 3 + 2;
        }
      }else if( nBuf>2 && 0==FUNC2("ed", &aBuf[nBuf-2], 2) ){
        if( FUNC1(aBuf, nBuf-2) ){
          *pnBuf = nBuf - 2;
          ret = 1;
        }
      }
      break;
  
    case 'n': 
      if( nBuf>3 && 0==FUNC2("ing", &aBuf[nBuf-3], 3) ){
        if( FUNC1(aBuf, nBuf-3) ){
          *pnBuf = nBuf - 3;
          ret = 1;
        }
      }
      break;
  
  }
  return ret;
}