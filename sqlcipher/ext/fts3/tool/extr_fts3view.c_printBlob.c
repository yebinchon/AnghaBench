
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char const*,...) ;
 scalar_t__ isprint (unsigned char const) ;
 int stdout ;

__attribute__((used)) static void printBlob(
  const unsigned char *aData,
  int nData
){
  int i, j;
  const char *zOfstFmt;
  const int perLine = 16;

  if( (nData&~0xfff)==0 ){
    zOfstFmt = " %03x: ";
  }else if( (nData&~0xffff)==0 ){
    zOfstFmt = " %04x: ";
  }else if( (nData&~0xfffff)==0 ){
    zOfstFmt = " %05x: ";
  }else if( (nData&~0xffffff)==0 ){
    zOfstFmt = " %06x: ";
  }else{
    zOfstFmt = " %08x: ";
  }

  for(i=0; i<nData; i += perLine){
    fprintf(stdout, zOfstFmt, i);
    for(j=0; j<perLine; j++){
      if( i+j>nData ){
        fprintf(stdout, "   ");
      }else{
        fprintf(stdout,"%02x ", aData[i+j]);
      }
    }
    for(j=0; j<perLine; j++){
      if( i+j>nData ){
        fprintf(stdout, " ");
      }else{
        fprintf(stdout,"%c", isprint(aData[i+j]) ? aData[i+j] : '.');
      }
    }
    fprintf(stdout,"\n");
  }
}
