
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isspace (char) ;

__attribute__((used)) static int safe_isspace(char c){
  if( c&0x80) return 0;
  return isspace(c);
}
