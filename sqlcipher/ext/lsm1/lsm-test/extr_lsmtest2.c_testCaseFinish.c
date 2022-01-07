
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int printf (char*) ;
 int stdout ;

void testCaseFinish(int rc){
  if( rc==0 ){
    printf("Ok\n");
  }else{
    printf("FAILED\n");
  }
  fflush(stdout);
}
