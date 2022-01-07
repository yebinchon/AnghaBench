
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mStack ;
typedef int m ;


 int FINAL_INS_COST_DIV ;
 int assert (int) ;
 int insertOrDeleteCost (char,char,char const) ;
 int printf (char*,...) ;
 int sqlite3_free (int*) ;
 int* sqlite3_malloc64 (int) ;
 int substituteCost (char,char,char) ;

__attribute__((used)) static int editdist1(const char *zA, const char *zB, int *pnMatch){
  int nA, nB;
  int xA, xB;
  char cA = 0, cB;
  char cAprev, cBprev;
  char cAnext, cBnext;
  int d;
  int dc = 0;
  int res;
  int *m;
  char *cx;
  int *toFree = 0;
  int nMatch = 0;
  int mStack[60+15];


  if( zA==0 || zB==0 ) return -1;


  while( zA[0] && zA[0]==zB[0] ){ dc = zA[0]; zA++; zB++; nMatch++; }
  if( pnMatch ) *pnMatch = nMatch;
  if( zA[0]==0 && zB[0]==0 ) return 0;






  for(nA=0; zA[nA]; nA++){
    if( zA[nA]&0x80 ) return -2;
  }
  for(nB=0; zB[nB]; nB++){
    if( zB[nB]&0x80 ) return -2;
  }


  if( nA==0 ){
    cBprev = (char)dc;
    for(xB=res=0; (cB = zB[xB])!=0; xB++){
      res += insertOrDeleteCost(cBprev, cB, zB[xB+1])/FINAL_INS_COST_DIV;
      cBprev = cB;
    }
    return res;
  }
  if( nB==0 ){
    cAprev = (char)dc;
    for(xA=res=0; (cA = zA[xA])!=0; xA++){
      res += insertOrDeleteCost(cAprev, cA, zA[xA+1]);
      cAprev = cA;
    }
    return res;
  }


  if( zA[0]=='*' && zA[1]==0 ) return 0;


  if( nB<(sizeof(mStack)*4)/(sizeof(mStack[0])*5) ){
    m = mStack;
  }else{
    m = toFree = sqlite3_malloc64( (nB+1)*5*sizeof(m[0])/4 );
    if( m==0 ) return -3;
  }
  cx = (char*)&m[nB+1];


  m[0] = 0;
  cx[0] = (char)dc;
  cBprev = (char)dc;
  for(xB=1; xB<=nB; xB++){
    cBnext = zB[xB];
    cB = zB[xB-1];
    cx[xB] = cB;
    m[xB] = m[xB-1] + insertOrDeleteCost(cBprev, cB, cBnext);
    cBprev = cB;
  }
  cAprev = (char)dc;
  for(xA=1; xA<=nA; xA++){
    int lastA = (xA==nA);
    cA = zA[xA-1];
    cAnext = zA[xA];
    if( cA=='*' && lastA ) break;
    d = m[0];
    dc = cx[0];
    m[0] = d + insertOrDeleteCost(cAprev, cA, cAnext);
    cBprev = 0;
    for(xB=1; xB<=nB; xB++){
      int totalCost, insCost, delCost, subCost, ncx;
      cB = zB[xB-1];
      cBnext = zB[xB];


      insCost = insertOrDeleteCost(cx[xB-1], cB, cBnext);
      if( lastA ) insCost /= FINAL_INS_COST_DIV;


      delCost = insertOrDeleteCost(cx[xB], cA, cBnext);


      subCost = substituteCost(cx[xB-1], cA, cB);


      totalCost = insCost + m[xB-1];
      ncx = cB;
      if( (delCost + m[xB])<totalCost ){
        totalCost = delCost + m[xB];
        ncx = cA;
      }
      if( (subCost + d)<totalCost ){
        totalCost = subCost + d;
      }
      d = m[xB];
      dc = cx[xB];
      m[xB] = totalCost;
      cx[xB] = (char)ncx;
      cBprev = cB;
    }
    cAprev = cA;
  }


  if( cA=='*' ){
    res = m[1];
    for(xB=1; xB<=nB; xB++){
      if( m[xB]<res ){
        res = m[xB];
        if( pnMatch ) *pnMatch = xB+nMatch;
      }
    }
  }else{
    res = m[nB];


    assert( pnMatch==0 );
  }
  sqlite3_free(toFree);
  return res;
}
