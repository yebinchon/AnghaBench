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
typedef  int /*<<< orphan*/  i ;
typedef  int /*<<< orphan*/  Bitvec ;

/* Variables and functions */
 int /*<<< orphan*/  BITVEC_SZ ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int FUNC2 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,void*) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 unsigned char* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int*) ; 

int FUNC13(int sz, int *aOp){
  Bitvec *pBitvec = 0;
  unsigned char *pV = 0;
  int rc = -1;
  int i, nx, pc, op;
  void *pTmpSpace;

  /* Allocate the Bitvec to be tested and a linear array of
  ** bits to act as the reference */
  pBitvec = FUNC4( sz );
  pV = FUNC9( (sz+7)/8 + 1 );
  pTmpSpace = FUNC11(BITVEC_SZ);
  if( pBitvec==0 || pV==0 || pTmpSpace==0  ) goto bitvec_end;

  /* NULL pBitvec tests */
  FUNC6(0, 1);
  FUNC3(0, 1, pTmpSpace);

  /* Run the program */
  pc = 0;
  while( (op = aOp[pc])!=0 ){
    switch( op ){
      case 1:
      case 2:
      case 5: {
        nx = 4;
        i = aOp[pc+2] - 1;
        aOp[pc+2] += aOp[pc+3];
        break;
      }
      case 3:
      case 4: 
      default: {
        nx = 2;
        FUNC12(sizeof(i), &i);
        break;
      }
    }
    if( (--aOp[pc+1]) > 0 ) nx = 0;
    pc += nx;
    i = (i & 0x7fffffff)%sz;
    if( (op & 1)!=0 ){
      FUNC1(pV, (i+1));
      if( op!=5 ){
        if( FUNC6(pBitvec, i+1) ) goto bitvec_end;
      }
    }else{
      FUNC0(pV, (i+1));
      FUNC3(pBitvec, i+1, pTmpSpace);
    }
  }

  /* Test to make sure the linear array exactly matches the
  ** Bitvec object.  Start with the assumption that they do
  ** match (rc==0).  Change rc to non-zero if a discrepancy
  ** is found.
  */
  rc = FUNC8(0,0) + FUNC8(pBitvec, sz+1)
          + FUNC8(pBitvec, 0)
          + (FUNC7(pBitvec) - sz);
  for(i=1; i<=sz; i++){
    if(  (FUNC2(pV,i))!=FUNC8(pBitvec,i) ){
      rc = i;
      break;
    }
  }

  /* Free allocated structure */
bitvec_end:
  FUNC10(pTmpSpace);
  FUNC10(pV);
  FUNC5(pBitvec);
  return rc;
}