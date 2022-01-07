
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int close (scalar_t__) ;
 int exit (int) ;
 scalar_t__ fd ;
 int fprintf (int ,char*,char*,...) ;
 int free (unsigned char*) ;
 unsigned char* getContent (int ,int) ;
 scalar_t__ open (char*,int ) ;
 int print_ckpt_info (unsigned char*) ;
 int print_index_hdr (unsigned char*,int) ;
 int stderr ;

int main(int argc, char **argv){
  unsigned char *aData;
  if( argc<2 ){
    fprintf(stderr,"Usage: %s FILENAME\n", argv[0]);
    exit(1);
  }
  fd = open(argv[1], O_RDONLY);
  if( fd<0 ){
    fprintf(stderr,"%s: can't open %s\n", argv[0], argv[1]);
    exit(1);
  }
  aData = getContent(0, 136);
  print_index_hdr(aData, 0);
  print_index_hdr(aData, 1);
  print_ckpt_info(aData);
  free(aData);
  close(fd);
  return 0;
}
