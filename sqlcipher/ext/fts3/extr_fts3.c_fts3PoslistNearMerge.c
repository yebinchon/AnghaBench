
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fts3PoslistCopy (char**,char**) ;
 int fts3PoslistMerge (char**,char**,char**) ;
 int fts3PoslistPhraseMerge (char**,int,int,int ,char**,char**) ;

__attribute__((used)) static int fts3PoslistNearMerge(
  char **pp,
  char *aTmp,
  int nRight,
  int nLeft,
  char **pp1,
  char **pp2
){
  char *p1 = *pp1;
  char *p2 = *pp2;

  char *pTmp1 = aTmp;
  char *pTmp2;
  char *aTmp2;
  int res = 1;

  fts3PoslistPhraseMerge(&pTmp1, nRight, 0, 0, pp1, pp2);
  aTmp2 = pTmp2 = pTmp1;
  *pp1 = p1;
  *pp2 = p2;
  fts3PoslistPhraseMerge(&pTmp2, nLeft, 1, 0, pp2, pp1);
  if( pTmp1!=aTmp && pTmp2!=aTmp2 ){
    fts3PoslistMerge(pp, &aTmp, &aTmp2);
  }else if( pTmp1!=aTmp ){
    fts3PoslistCopy(pp, &aTmp);
  }else if( pTmp2!=aTmp2 ){
    fts3PoslistCopy(pp, &aTmp2);
  }else{
    res = 0;
  }

  return res;
}
