
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned char rot13(unsigned char c){
  if( c>='a' && c<='z' ){
    c += 13;
    if( c>'z' ) c -= 26;
  }else if( c>='A' && c<='Z' ){
    c += 13;
    if( c>'Z' ) c -= 26;
  }
  return c;
}
