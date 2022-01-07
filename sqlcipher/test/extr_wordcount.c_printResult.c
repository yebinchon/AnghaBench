
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;
 char* zTag ;

__attribute__((used)) static int printResult(void *NotUsed, int nArg, char **azArg, char **azNm){
  int i;
  printf("%s", zTag);
  for(i=0; i<nArg; i++){
    printf(" %s", azArg[i] ? azArg[i] : "(null)");
  }
  printf("\n");
  return 0;
}
