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
typedef  int sqlite3_int64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static char *FUNC4(const char *zIn){
  sqlite3_int64 nIn;              /* Size of input string, in bytes */
  char *zOut;                     /* Output (dequoted) string */

  nIn = FUNC3(zIn);
  zOut = FUNC2(nIn+1);
  if( zOut ){
    char q = zIn[0];              /* Quote character (if any ) */

    if( q!='[' && q!= '\'' && q!='"' && q!='`' ){
      FUNC1(zOut, zIn, (size_t)(nIn+1));
    }else{
      int iOut = 0;               /* Index of next byte to write to output */
      int iIn;                    /* Index of next byte to read from input */

      if( q=='[' ) q = ']';
      for(iIn=1; iIn<nIn; iIn++){
        if( zIn[iIn]==q ) iIn++;
        zOut[iOut++] = zIn[iIn];
      }
    }
    FUNC0( (int)FUNC3(zOut)<=nIn );
  }
  return zOut;
}