
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FG_NBO ;
 int FG_PGSZ ;
 int assert (int) ;
 int print_decode_line (unsigned char*,int,int,int ,char*) ;

__attribute__((used)) static void print_index_hdr(unsigned char *aData, int ix){
  int i;
  assert( ix==0 || ix==1 );
  i = ix ? 48 : 0;
  print_decode_line(aData, 0+i, 4, FG_NBO, "Wal-index version");
  print_decode_line(aData, 4+i, 4, 0, "unused padding");
  print_decode_line(aData, 8+i, 4, FG_NBO, "transaction counter");
  print_decode_line(aData,12+i, 1, 0, "1 when initialized");
  print_decode_line(aData,13+i, 1, 0, "true if WAL cksums are bigendian");
  print_decode_line(aData,14+i, 2, FG_PGSZ, "database page size");
  print_decode_line(aData,16+i, 4, FG_NBO, "mxFrame");
  print_decode_line(aData,20+i, 4, FG_NBO, "Size of database in pages");
  print_decode_line(aData,24+i, 8, 0, "Cksum of last frame in -wal");
  print_decode_line(aData,32+i, 8, 0, "Salt values from the -wal");
  print_decode_line(aData,40+i, 8, 0, "Cksum over all prior fields");
}
