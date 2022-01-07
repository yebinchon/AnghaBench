
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int writeUtf8(unsigned char *z, unsigned c){
  if( c<0x00080 ){
    z[0] = (unsigned char)(c&0xff);
    return 1;
  }
  if( c<0x00800 ){
    z[0] = 0xC0 + (unsigned char)((c>>6)&0x1F);
    z[1] = 0x80 + (unsigned char)(c & 0x3F);
    return 2;
  }
  if( c<0x10000 ){
    z[0] = 0xE0 + (unsigned char)((c>>12)&0x0F);
    z[1] = 0x80 + (unsigned char)((c>>6) & 0x3F);
    z[2] = 0x80 + (unsigned char)(c & 0x3F);
    return 3;
  }
  z[0] = 0xF0 + (unsigned char)((c>>18) & 0x07);
  z[1] = 0x80 + (unsigned char)((c>>12) & 0x3F);
  z[2] = 0x80 + (unsigned char)((c>>6) & 0x3F);
  z[3] = 0x80 + (unsigned char)(c & 0x3F);
  return 4;
}
