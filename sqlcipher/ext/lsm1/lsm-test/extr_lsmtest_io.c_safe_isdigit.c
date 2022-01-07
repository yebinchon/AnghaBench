
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isdigit (char) ;

__attribute__((used)) static int safe_isdigit(char c){
  if( c&0x80) return 0;
  return isdigit(c);
}
