
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char toHex(unsigned char c){
  return "0123456789abcdef"[c&0xf];
}
