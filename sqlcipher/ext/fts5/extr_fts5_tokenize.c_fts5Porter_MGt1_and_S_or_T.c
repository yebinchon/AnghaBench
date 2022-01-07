
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 scalar_t__ fts5Porter_MGt1 (char*,int) ;

__attribute__((used)) static int fts5Porter_MGt1_and_S_or_T(char *zStem, int nStem){
  assert( nStem>0 );
  return (zStem[nStem-1]=='s' || zStem[nStem-1]=='t')
      && fts5Porter_MGt1(zStem, nStem);
}
