
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* aTokenChar; } ;
typedef TYPE_1__ AsciiTokenizer ;



__attribute__((used)) static void fts5AsciiAddExceptions(
  AsciiTokenizer *p,
  const char *zArg,
  int bTokenChars
){
  int i;
  for(i=0; zArg[i]; i++){
    if( (zArg[i] & 0x80)==0 ){
      p->aTokenChar[(int)zArg[i]] = (unsigned char)bTokenChars;
    }
  }
}
