
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int testGlobMatch(const char *zPattern, const char *zStr){
  int i = 0;
  int j = 0;

  while( zPattern[i] ){
    char p = zPattern[i];

    if( p=='*' || p=='%' ){
      do {
        if( testGlobMatch(&zPattern[i+1], &zStr[j]) ) return 1;
      }while( zStr[j++] );
      return 0;
    }

    if( zStr[j]==0 || (p!='?' && p!=zStr[j]) ){

      return 0;
    }

    j++;
    i++;
  }

  return (zPattern[i]==0 && zStr[j]==0);
}
