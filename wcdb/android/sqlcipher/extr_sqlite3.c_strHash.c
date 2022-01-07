
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* sqlite3UpperToLower ;

__attribute__((used)) static unsigned int strHash(const char *z){
  unsigned int h = 0;
  unsigned char c;
  while( (c = (unsigned char)*z++)!=0 ){



    h += sqlite3UpperToLower[c];
    h *= 0x9e3779b1;
  }
  return h;
}
