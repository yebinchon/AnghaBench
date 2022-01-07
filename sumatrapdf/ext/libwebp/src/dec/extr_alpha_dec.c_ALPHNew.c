
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ALPHDecoder ;


 scalar_t__ WebPSafeCalloc (unsigned long long,int) ;

__attribute__((used)) static ALPHDecoder* ALPHNew(void) {
  ALPHDecoder* const dec = (ALPHDecoder*)WebPSafeCalloc(1ULL, sizeof(*dec));
  return dec;
}
