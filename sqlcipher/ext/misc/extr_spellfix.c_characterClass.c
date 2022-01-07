
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* initClass ;
 char* midClass ;

__attribute__((used)) static char characterClass(char cPrev, char c){
  return cPrev==0 ? initClass[c&0x7f] : midClass[c&0x7f];
}
