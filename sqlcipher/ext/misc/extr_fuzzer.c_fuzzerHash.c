
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FUZZER_HASH ;

__attribute__((used)) static unsigned int fuzzerHash(const char *z){
  unsigned int h = 0;
  while( *z ){ h = (h<<3) ^ (h>>29) ^ *(z++); }
  return h % FUZZER_HASH;
}
