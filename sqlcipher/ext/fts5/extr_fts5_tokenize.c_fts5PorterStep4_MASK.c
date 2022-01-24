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

__attribute__((used)) static int FUNC3(char *aBuf, int *pnBuf){
  int ret = 0;
  int nBuf = *pnBuf;
  switch( aBuf[nBuf-2] ){
    
    case 'a': 
      if( nBuf>2 && 0==FUNC2("al", &aBuf[nBuf-2], 2) ){
        if( FUNC0(aBuf, nBuf-2) ){
          *pnBuf = nBuf - 2;
        }
      }
      break;
  
    case 'c': 
      if( nBuf>4 && 0==FUNC2("ance", &aBuf[nBuf-4], 4) ){
        if( FUNC0(aBuf, nBuf-4) ){
          *pnBuf = nBuf - 4;
        }
      }else if( nBuf>4 && 0==FUNC2("ence", &aBuf[nBuf-4], 4) ){
        if( FUNC0(aBuf, nBuf-4) ){
          *pnBuf = nBuf - 4;
        }
      }
      break;
  
    case 'e': 
      if( nBuf>2 && 0==FUNC2("er", &aBuf[nBuf-2], 2) ){
        if( FUNC0(aBuf, nBuf-2) ){
          *pnBuf = nBuf - 2;
        }
      }
      break;
  
    case 'i': 
      if( nBuf>2 && 0==FUNC2("ic", &aBuf[nBuf-2], 2) ){
        if( FUNC0(aBuf, nBuf-2) ){
          *pnBuf = nBuf - 2;
        }
      }
      break;
  
    case 'l': 
      if( nBuf>4 && 0==FUNC2("able", &aBuf[nBuf-4], 4) ){
        if( FUNC0(aBuf, nBuf-4) ){
          *pnBuf = nBuf - 4;
        }
      }else if( nBuf>4 && 0==FUNC2("ible", &aBuf[nBuf-4], 4) ){
        if( FUNC0(aBuf, nBuf-4) ){
          *pnBuf = nBuf - 4;
        }
      }
      break;
  
    case 'n': 
      if( nBuf>3 && 0==FUNC2("ant", &aBuf[nBuf-3], 3) ){
        if( FUNC0(aBuf, nBuf-3) ){
          *pnBuf = nBuf - 3;
        }
      }else if( nBuf>5 && 0==FUNC2("ement", &aBuf[nBuf-5], 5) ){
        if( FUNC0(aBuf, nBuf-5) ){
          *pnBuf = nBuf - 5;
        }
      }else if( nBuf>4 && 0==FUNC2("ment", &aBuf[nBuf-4], 4) ){
        if( FUNC0(aBuf, nBuf-4) ){
          *pnBuf = nBuf - 4;
        }
      }else if( nBuf>3 && 0==FUNC2("ent", &aBuf[nBuf-3], 3) ){
        if( FUNC0(aBuf, nBuf-3) ){
          *pnBuf = nBuf - 3;
        }
      }
      break;
  
    case 'o': 
      if( nBuf>3 && 0==FUNC2("ion", &aBuf[nBuf-3], 3) ){
        if( FUNC1(aBuf, nBuf-3) ){
          *pnBuf = nBuf - 3;
        }
      }else if( nBuf>2 && 0==FUNC2("ou", &aBuf[nBuf-2], 2) ){
        if( FUNC0(aBuf, nBuf-2) ){
          *pnBuf = nBuf - 2;
        }
      }
      break;
  
    case 's': 
      if( nBuf>3 && 0==FUNC2("ism", &aBuf[nBuf-3], 3) ){
        if( FUNC0(aBuf, nBuf-3) ){
          *pnBuf = nBuf - 3;
        }
      }
      break;
  
    case 't': 
      if( nBuf>3 && 0==FUNC2("ate", &aBuf[nBuf-3], 3) ){
        if( FUNC0(aBuf, nBuf-3) ){
          *pnBuf = nBuf - 3;
        }
      }else if( nBuf>3 && 0==FUNC2("iti", &aBuf[nBuf-3], 3) ){
        if( FUNC0(aBuf, nBuf-3) ){
          *pnBuf = nBuf - 3;
        }
      }
      break;
  
    case 'u': 
      if( nBuf>3 && 0==FUNC2("ous", &aBuf[nBuf-3], 3) ){
        if( FUNC0(aBuf, nBuf-3) ){
          *pnBuf = nBuf - 3;
        }
      }
      break;
  
    case 'v': 
      if( nBuf>3 && 0==FUNC2("ive", &aBuf[nBuf-3], 3) ){
        if( FUNC0(aBuf, nBuf-3) ){
          *pnBuf = nBuf - 3;
        }
      }
      break;
  
    case 'z': 
      if( nBuf>3 && 0==FUNC2("ize", &aBuf[nBuf-3], 3) ){
        if( FUNC0(aBuf, nBuf-3) ){
          *pnBuf = nBuf - 3;
        }
      }
      break;
  
  }
  return ret;
}