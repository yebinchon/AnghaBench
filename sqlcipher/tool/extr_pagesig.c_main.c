
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int computeSigs (char*) ;

int main(int argc, char **argv){
  int i;
  for(i=1; i<argc; i++) computeSigs(argv[i]);
  return 0;
}
