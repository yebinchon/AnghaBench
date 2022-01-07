
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MX_LCK ;
 int O_RDWR ;
 int close (int) ;
 int fprintf (int ,char*,char*,...) ;
 int open (char*,int ,int ) ;
 int printf (char*) ;
 int showLocksInRange (int,int ,int ) ;
 int stderr ;

int main(int argc, char **argv){
  int fd;
  int cnt;

  if( argc!=2 ){
    fprintf(stderr, "Usage: %s FILENAME\n", argv[0]);
    return 1;
  }
  fd = open(argv[1], O_RDWR, 0);
  if( fd<0 ){
    fprintf(stderr, "%s: cannot open %s\n", argv[0], argv[1]);
    return 1;
  }
  cnt = showLocksInRange(fd, 0, MX_LCK);
  if( cnt==0 ) printf("no locks\n");
  close(fd);
  return 0;
}
