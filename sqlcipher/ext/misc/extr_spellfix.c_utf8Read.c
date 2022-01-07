
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NEVER (int) ;
 int* sqlite3Utf8Trans1 ;

__attribute__((used)) static int utf8Read(const unsigned char *z, int n, int *pSize){
  int c, i;



  if( NEVER(n==0) ){
    c = i = 0;
  }else{
    c = z[0];
    i = 1;
    if( c>=0xc0 ){
      c = sqlite3Utf8Trans1[c-0xc0];
      while( i<n && (z[i] & 0xc0)==0x80 ){
        c = (c<<6) + (0x3f & z[i++]);
      }
    }
  }
  *pSize = i;
  return c;
}
