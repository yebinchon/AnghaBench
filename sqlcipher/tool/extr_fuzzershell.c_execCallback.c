
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int printf (char*,...) ;
 int stdout ;

__attribute__((used)) static int execCallback(void *NotUsed, int argc, char **argv, char **colv){
  int i;
  static unsigned cnt = 0;
  printf("ROW #%u:\n", ++cnt);
  if( argv ){
    for(i=0; i<argc; i++){
      printf(" %s=", colv[i]);
      if( argv[i] ){
        printf("[%s]\n", argv[i]);
      }else{
        printf("NULL\n");
      }
    }
  }
  fflush(stdout);
  return 0;
}
