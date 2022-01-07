
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i ;
typedef int Bitvec ;


 int BITVEC_SZ ;
 int CLEARBIT (unsigned char*,int) ;
 int SETBIT (unsigned char*,int) ;
 int TESTBIT (unsigned char*,int) ;
 int sqlite3BitvecClear (int *,int,void*) ;
 int * sqlite3BitvecCreate (int) ;
 int sqlite3BitvecDestroy (int *) ;
 scalar_t__ sqlite3BitvecSet (int *,int) ;
 int sqlite3BitvecSize (int *) ;
 int sqlite3BitvecTest (int *,int) ;
 unsigned char* sqlite3MallocZero (int) ;
 int sqlite3_free (unsigned char*) ;
 void* sqlite3_malloc64 (int ) ;
 int sqlite3_randomness (int,int*) ;

int sqlite3BitvecBuiltinTest(int sz, int *aOp){
  Bitvec *pBitvec = 0;
  unsigned char *pV = 0;
  int rc = -1;
  int i, nx, pc, op;
  void *pTmpSpace;



  pBitvec = sqlite3BitvecCreate( sz );
  pV = sqlite3MallocZero( (sz+7)/8 + 1 );
  pTmpSpace = sqlite3_malloc64(BITVEC_SZ);
  if( pBitvec==0 || pV==0 || pTmpSpace==0 ) goto bitvec_end;


  sqlite3BitvecSet(0, 1);
  sqlite3BitvecClear(0, 1, pTmpSpace);


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
        sqlite3_randomness(sizeof(i), &i);
        break;
      }
    }
    if( (--aOp[pc+1]) > 0 ) nx = 0;
    pc += nx;
    i = (i & 0x7fffffff)%sz;
    if( (op & 1)!=0 ){
      SETBIT(pV, (i+1));
      if( op!=5 ){
        if( sqlite3BitvecSet(pBitvec, i+1) ) goto bitvec_end;
      }
    }else{
      CLEARBIT(pV, (i+1));
      sqlite3BitvecClear(pBitvec, i+1, pTmpSpace);
    }
  }






  rc = sqlite3BitvecTest(0,0) + sqlite3BitvecTest(pBitvec, sz+1)
          + sqlite3BitvecTest(pBitvec, 0)
          + (sqlite3BitvecSize(pBitvec) - sz);
  for(i=1; i<=sz; i++){
    if( (TESTBIT(pV,i))!=sqlite3BitvecTest(pBitvec,i) ){
      rc = i;
      break;
    }
  }


bitvec_end:
  sqlite3_free(pTmpSpace);
  sqlite3_free(pV);
  sqlite3BitvecDestroy(pBitvec);
  return rc;
}
