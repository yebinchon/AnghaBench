
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,int,int,int) ;
 int free (unsigned char*) ;
 unsigned char* getContent (int,int) ;
 int pagesize ;
 int print_byte_range (int,int,unsigned char*,int ) ;
 int print_decode_line (unsigned char*,int,int,int,char*) ;
 int stdout ;

__attribute__((used)) static void print_frame(int iFrame){
  int iStart;
  unsigned char *aData;
  iStart = 32 + (iFrame-1)*(pagesize+24);
  fprintf(stdout, "Frame %d:   (offsets 0x%x..0x%x)\n",
          iFrame, iStart, iStart+pagesize+24);
  aData = getContent(iStart, pagesize+24);
  print_decode_line(aData, 0, 4, 0, "Page number");
  print_decode_line(aData, 4, 4, 0, "DB size, or 0 for non-commit");
  print_decode_line(aData, 8, 4, 1, "Salt-1");
  print_decode_line(aData,12, 4, 1, "Salt-2");
  print_decode_line(aData,16, 4, 1, "Checksum-1");
  print_decode_line(aData,20, 4, 1, "Checksum-2");
  print_byte_range(iStart+24, pagesize, aData+24, 0);
  free(aData);
}
