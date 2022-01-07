
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ fts5PorterIsVowel (char,int) ;

__attribute__((used)) static int fts5Porter_Vowel(char *zStem, int nStem){
  int i;
  for(i=0; i<nStem; i++){
    if( fts5PorterIsVowel(zStem[i], i>0) ){
      return 1;
    }
  }
  return 0;
}
