
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char const*,int,char const*) ;

__attribute__((used)) static void printWithPrefix(FILE *pOut, const char *zPrefix, const char *zMsg){
  while( zMsg && zMsg[0] ){
    int i;
    for(i=0; zMsg[i] && zMsg[i]!='\n' && zMsg[i]!='\r'; i++){}
    fprintf(pOut, "%s%.*s\n", zPrefix, i, zMsg);
    zMsg += i;
    while( zMsg[0]=='\n' || zMsg[0]=='\r' ) zMsg++;
  }
}
