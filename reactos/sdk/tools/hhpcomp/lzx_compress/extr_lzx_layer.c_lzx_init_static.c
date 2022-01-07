
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* extra_bits ;
 double log (int) ;
 int* position_base ;
 double rloge2 ;

__attribute__((used)) static void lzx_init_static(void)
{
  int i, j;

  if (extra_bits[49]) return;

  rloge2 = 1.0/log(2);
  for (i=0, j=0; i <= 50; i += 2) {
    extra_bits[i] = extra_bits[i+1] = j;
    if ((i != 0) && (j < 17)) j++;
  }

  for (i=0, j=0; i <= 50; i++) {
    position_base[i] = j;
    j += 1 << extra_bits[i];
  }
}
