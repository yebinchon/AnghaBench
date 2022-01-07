
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ rot13 (char const) ;

__attribute__((used)) static int rot13CollFunc(
  void *notUsed,
  int nKey1, const void *pKey1,
  int nKey2, const void *pKey2
){
  const char *zA = (const char*)pKey1;
  const char *zB = (const char*)pKey2;
  int i, x;
  for(i=0; i<nKey1 && i<nKey2; i++){
    x = (int)rot13(zA[i]) - (int)rot13(zB[i]);
    if( x!=0 ) return x;
  }
  return nKey1 - nKey2;
}
