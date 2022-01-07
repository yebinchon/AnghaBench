
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int utf8Read (unsigned char const*,int,int*) ;

__attribute__((used)) static int utf8Charlen(const char *zIn, int nIn){
  int i;
  int nChar = 0;
  for(i=0; i<nIn; nChar++){
    int sz;
    utf8Read((const unsigned char *)&zIn[i], nIn-i, &sz);
    i += sz;
  }
  return nChar;
}
