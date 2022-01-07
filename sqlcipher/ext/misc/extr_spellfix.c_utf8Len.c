
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int utf8Len(unsigned char c, int N){
  int len = 1;
  if( c>0x7f ){
    if( (c&0xe0)==0xc0 ){
      len = 2;
    }else if( (c&0xf0)==0xe0 ){
      len = 3;
    }else{
      len = 4;
    }
  }
  if( len>N ) len = N;
  return len;
}
