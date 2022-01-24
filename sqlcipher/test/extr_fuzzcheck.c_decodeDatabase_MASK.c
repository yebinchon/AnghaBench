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
typedef  unsigned int sqlite3_uint64 ;

/* Variables and functions */
 unsigned int MX_FILE_SZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ eVerbosity ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned char FUNC3 (unsigned char) ; 
 scalar_t__ FUNC4 (unsigned char const*,int,unsigned int*,unsigned int*) ; 
 scalar_t__ FUNC5 (unsigned char) ; 
 scalar_t__ FUNC6 (unsigned char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*) ; 
 unsigned char* FUNC9 (unsigned int) ; 
 unsigned char* FUNC10 (unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC11(
  const unsigned char *zIn,      /* Input text to be decoded */
  int nIn,                       /* Bytes of input text */
  unsigned char **paDecode,      /* OUT: decoded database file */
  int *pnDecode                  /* OUT: Size of decoded database */
){
  unsigned char *a;              /* Database under construction */
  int mx = 0;                    /* Current size of the database */
  sqlite3_uint64 nAlloc = 4096;  /* Space allocated in a[] */
  unsigned int i;                /* Next byte of zIn[] to read */
  unsigned int j;                /* Temporary integer */
  unsigned int k;                /* half-byte cursor index for output */
  unsigned int n;                /* Number of bytes of input */
  unsigned char b = 0;
  if( nIn<4 ) return -1;
  n = (unsigned int)nIn;
  a = FUNC9( nAlloc );
  if( a==0 ){
    FUNC2(stderr, "Out of memory!\n");
    FUNC1(1);
  }
  FUNC7(a, 0, (size_t)nAlloc);
  for(i=k=0; i<n; i++){
    unsigned char c = (unsigned char)zIn[i];
    if( FUNC5(c) ){
      k++;
      if( k & 1 ){
        b = FUNC3(c)*16;
      }else{
        b += FUNC3(c);
        j = k/2 - 1;
        if( j>=nAlloc ){
          sqlite3_uint64 newSize;
          if( nAlloc==MX_FILE_SZ || j>=MX_FILE_SZ ){
            if( eVerbosity ){
              FUNC2(stderr, "Input database too big: max %d bytes\n",
                      MX_FILE_SZ);
            }
            FUNC8(a);
            return -1;
          }
          newSize = nAlloc*2;
          if( newSize<=j ){
            newSize = (j+4096)&~4095;
          }
          if( newSize>MX_FILE_SZ ){
            if( j>=MX_FILE_SZ ){
              FUNC8(a);
              return -1;
            }
            newSize = MX_FILE_SZ;
          }
          a = FUNC10( a, newSize );
          if( a==0 ){
            FUNC2(stderr, "Out of memory!\n");
            FUNC1(1);
          }
          FUNC0( newSize > nAlloc );
          FUNC7(a+nAlloc, 0, (size_t)(newSize - nAlloc));
          nAlloc = newSize;
        }
        if( j>=(unsigned)mx ){
          mx = (j + 4095)&~4095;
          if( mx>MX_FILE_SZ ) mx = MX_FILE_SZ;
        }
        FUNC0( j<nAlloc );
        a[j] = b;
      }
    }else if( zIn[i]=='[' && i<n-3 && FUNC4(zIn+i, nIn-i, &k, &i) ){
      continue;
   }else if( zIn[i]=='\n' && i<n-4 && FUNC6(zIn+i,"\n--\n",4)==0 ){
      i += 4;
      break;
    }
  }
  *pnDecode = mx;
  *paDecode = a;
  return i;
}