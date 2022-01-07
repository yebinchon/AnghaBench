
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int all_stop ;
 int fprintf (int ,char*,int,char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;

int check_callback(void *pid, int argc, char **argv, char **notUsed2){
  int id = (int)pid;
  if( strcmp(argv[0],"ok") ){
    all_stop = 1;
    fprintf(stderr,"%d: %s\n", id, argv[0]);
  }else{

  }
  return 0;
}
