
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WORD32 ;


 long MASK ;

__attribute__((used)) static void put_length(WORD32 *x, long len) {

  x[14] = (WORD32)((len<<3) & MASK);
  x[15] = (WORD32)(len>>(32-3) & 0x7);
}
