
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isConsonant (char const*) ;

__attribute__((used)) static int hasVowel(const char *z){
  while( isConsonant(z) ){ z++; }
  return *z!=0;
}
