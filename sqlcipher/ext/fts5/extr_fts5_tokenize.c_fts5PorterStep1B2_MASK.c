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
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

__attribute__((used)) static int FUNC2(char *aBuf, int *pnBuf){
  int ret = 0;
  int nBuf = *pnBuf;
  switch( aBuf[nBuf-2] ){
    
    case 'a': 
      if( nBuf>2 && 0==FUNC0("at", &aBuf[nBuf-2], 2) ){
        FUNC1(&aBuf[nBuf-2], "ate", 3);
        *pnBuf = nBuf - 2 + 3;
        ret = 1;
      }
      break;
  
    case 'b': 
      if( nBuf>2 && 0==FUNC0("bl", &aBuf[nBuf-2], 2) ){
        FUNC1(&aBuf[nBuf-2], "ble", 3);
        *pnBuf = nBuf - 2 + 3;
        ret = 1;
      }
      break;
  
    case 'i': 
      if( nBuf>2 && 0==FUNC0("iz", &aBuf[nBuf-2], 2) ){
        FUNC1(&aBuf[nBuf-2], "ize", 3);
        *pnBuf = nBuf - 2 + 3;
        ret = 1;
      }
      break;
  
  }
  return ret;
}