
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zTerm ;
typedef int sqlite3_int64 ;


 int exit (int) ;
 int fprintf (int ,char*) ;
 scalar_t__ getVarint (unsigned char const*,int*) ;
 int memcpy (char*,unsigned char const*,size_t) ;
 int printf (char*,...) ;
 int stderr ;

__attribute__((used)) static void decodeSegment(
  const unsigned char *aData,
  int nData
){
  sqlite3_int64 iChild = 0;
  sqlite3_int64 iPrefix;
  sqlite3_int64 nTerm;
  sqlite3_int64 n;
  sqlite3_int64 iDocsz;
  int iHeight;
  sqlite3_int64 i = 0;
  int cnt = 0;
  char zTerm[1000];

  i += getVarint(aData, &n);
  iHeight = (int)n;
  printf("height: %d\n", iHeight);
  if( iHeight>0 ){
    i += getVarint(aData+i, &iChild);
    printf("left-child: %lld\n", iChild);
  }
  while( i<nData ){
    if( (cnt++)>0 ){
      i += getVarint(aData+i, &iPrefix);
    }else{
      iPrefix = 0;
    }
    i += getVarint(aData+i, &nTerm);
    if( iPrefix+nTerm+1 >= sizeof(zTerm) ){
      fprintf(stderr, "term to long\n");
      exit(1);
    }
    memcpy(zTerm+iPrefix, aData+i, (size_t)nTerm);
    zTerm[iPrefix+nTerm] = 0;
    i += nTerm;
    if( iHeight==0 ){
      i += getVarint(aData+i, &iDocsz);
      printf("term: %-25s doclist %7lld bytes offset %lld\n", zTerm, iDocsz, i);
      i += iDocsz;
    }else{
      printf("term: %-25s child %lld\n", zTerm, ++iChild);
    }
  }
}
