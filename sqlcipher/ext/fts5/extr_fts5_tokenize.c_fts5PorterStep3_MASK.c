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
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static int FUNC3(char *aBuf, int *pnBuf){
  int ret = 0;
  int nBuf = *pnBuf;
  switch( aBuf[nBuf-2] ){
    
    case 'a': 
      if( nBuf>4 && 0==FUNC1("ical", &aBuf[nBuf-4], 4) ){
        if( FUNC0(aBuf, nBuf-4) ){
          FUNC2(&aBuf[nBuf-4], "ic", 2);
          *pnBuf = nBuf - 4 + 2;
        }
      }
      break;
  
    case 's': 
      if( nBuf>4 && 0==FUNC1("ness", &aBuf[nBuf-4], 4) ){
        if( FUNC0(aBuf, nBuf-4) ){
          *pnBuf = nBuf - 4;
        }
      }
      break;
  
    case 't': 
      if( nBuf>5 && 0==FUNC1("icate", &aBuf[nBuf-5], 5) ){
        if( FUNC0(aBuf, nBuf-5) ){
          FUNC2(&aBuf[nBuf-5], "ic", 2);
          *pnBuf = nBuf - 5 + 2;
        }
      }else if( nBuf>5 && 0==FUNC1("iciti", &aBuf[nBuf-5], 5) ){
        if( FUNC0(aBuf, nBuf-5) ){
          FUNC2(&aBuf[nBuf-5], "ic", 2);
          *pnBuf = nBuf - 5 + 2;
        }
      }
      break;
  
    case 'u': 
      if( nBuf>3 && 0==FUNC1("ful", &aBuf[nBuf-3], 3) ){
        if( FUNC0(aBuf, nBuf-3) ){
          *pnBuf = nBuf - 3;
        }
      }
      break;
  
    case 'v': 
      if( nBuf>5 && 0==FUNC1("ative", &aBuf[nBuf-5], 5) ){
        if( FUNC0(aBuf, nBuf-5) ){
          *pnBuf = nBuf - 5;
        }
      }
      break;
  
    case 'z': 
      if( nBuf>5 && 0==FUNC1("alize", &aBuf[nBuf-5], 5) ){
        if( FUNC0(aBuf, nBuf-5) ){
          FUNC2(&aBuf[nBuf-5], "al", 2);
          *pnBuf = nBuf - 5 + 2;
        }
      }
      break;
  
  }
  return ret;
}