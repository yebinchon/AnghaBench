
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isDirSep (char) ;

__attribute__((used)) static char *filenameTail(char *z){
  int i, j;
  for(i=j=0; z[i]; i++) if( isDirSep(z[i]) ) j = i+1;
  return z+j;
}
