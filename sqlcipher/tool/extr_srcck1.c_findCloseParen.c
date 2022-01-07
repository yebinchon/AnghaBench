
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int findCloseParen(const char *z){
  unsigned int nOpen = 0;
  unsigned i;
  for(i=0; z[i]; i++){
    if( z[i]=='(' ) nOpen++;
    if( z[i]==')' ){
      if( nOpen==0 ) break;
      nOpen--;
    }
  }
  return i;
}
