
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t i64 ;


 int decodeVarint (unsigned char*,size_t*) ;
 scalar_t__ describeContent (unsigned char*,size_t,char*) ;
 size_t localPayload (size_t,unsigned char) ;
 int sprintf (char*,char*,int) ;
 size_t strlen (char*) ;

__attribute__((used)) static i64 describeCell(
  unsigned char cType,
  unsigned char *a,
  int showCellContent,
  char **pzDesc
){
  int i;
  i64 nDesc = 0;
  int n = 0;
  int leftChild;
  i64 nPayload;
  i64 rowid;
  i64 nLocal;
  static char zDesc[1000];
  i = 0;
  if( cType<=5 ){
    leftChild = ((a[0]*256 + a[1])*256 + a[2])*256 + a[3];
    a += 4;
    n += 4;
    sprintf(zDesc, "lx: %d ", leftChild);
    nDesc = strlen(zDesc);
  }
  if( cType!=5 ){
    i = decodeVarint(a, &nPayload);
    a += i;
    n += i;
    sprintf(&zDesc[nDesc], "n: %lld ", nPayload);
    nDesc += strlen(&zDesc[nDesc]);
    nLocal = localPayload(nPayload, cType);
  }else{
    nPayload = nLocal = 0;
  }
  if( cType==5 || cType==13 ){
    i = decodeVarint(a, &rowid);
    a += i;
    n += i;
    sprintf(&zDesc[nDesc], "r: %lld ", rowid);
    nDesc += strlen(&zDesc[nDesc]);
  }
  if( nLocal<nPayload ){
    int ovfl;
    unsigned char *b = &a[nLocal];
    ovfl = ((b[0]*256 + b[1])*256 + b[2])*256 + b[3];
    sprintf(&zDesc[nDesc], "ov: %d ", ovfl);
    nDesc += strlen(&zDesc[nDesc]);
    n += 4;
  }
  if( showCellContent && cType!=5 ){
    nDesc += describeContent(a, nLocal, &zDesc[nDesc-1]);
  }
  *pzDesc = zDesc;
  return nLocal+n;
}
