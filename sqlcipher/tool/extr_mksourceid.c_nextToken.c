
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isspace (char) ;

__attribute__((used)) static char *nextToken(char *z){
  while( *z && !isspace(*z) ) z++;
  if( *z==0 ) return z;
  *z = 0;
  return &z[1];
}
