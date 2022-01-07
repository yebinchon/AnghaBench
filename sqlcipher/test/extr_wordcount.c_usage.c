
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int printf (char*,char*) ;
 char* zHelp ;

__attribute__((used)) static void usage(void){
  printf("%s",zHelp);
  exit(0);
}
