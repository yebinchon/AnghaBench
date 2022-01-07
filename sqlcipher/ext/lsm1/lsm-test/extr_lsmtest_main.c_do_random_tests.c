
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int printf (char*,int) ;
 int testPrintError (char*) ;
 int testPrngValue (int) ;

int do_random_tests(int nArg, char **azArg){
  int i;
  int nRand;
  if( nArg==0 ){
    nRand = 10;
  }else if( nArg==1 ){
    nRand = atoi(azArg[0]);
  }else{
    testPrintError("Usage: random ?N?\n");
    return -1;
  }
  for(i=0; i<nRand; i++){
    printf("0x%x\n", testPrngValue(i));
  }
  return 0;
}
