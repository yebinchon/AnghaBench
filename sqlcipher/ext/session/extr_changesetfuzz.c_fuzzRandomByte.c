
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t i; unsigned char* s; unsigned char j; } ;


 TYPE_1__ sqlite3Prng ;

__attribute__((used)) static unsigned char fuzzRandomByte(void){
  unsigned char t;
  sqlite3Prng.i++;
  t = sqlite3Prng.s[sqlite3Prng.i];
  sqlite3Prng.j += t;
  sqlite3Prng.s[sqlite3Prng.i] = sqlite3Prng.s[sqlite3Prng.j];
  sqlite3Prng.s[sqlite3Prng.j] = t;
  t += sqlite3Prng.s[sqlite3Prng.i];
  return sqlite3Prng.s[t];
}
