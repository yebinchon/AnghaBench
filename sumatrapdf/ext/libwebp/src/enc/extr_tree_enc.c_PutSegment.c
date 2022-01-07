
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int VP8BitWriter ;


 scalar_t__ VP8PutBit (int * const,int,int const) ;

__attribute__((used)) static void PutSegment(VP8BitWriter* const bw, int s, const uint8_t* p) {
  if (VP8PutBit(bw, s >= 2, p[0])) p += 1;
  VP8PutBit(bw, s & 1, p[1]);
}
