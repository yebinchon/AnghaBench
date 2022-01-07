
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcpy (int*,int const*,int) ;

__attribute__((used)) static inline void
write_ff(const uint8_t * src, uint8_t * des, int n) {
 int i;
 int align8_n = (n+7)&(~7);

 des[0] = 0xff;
 des[1] = align8_n/8 - 1;
 memcpy(des+2, src, n);
 for(i=0; i< align8_n-n; i++){
  des[n+2+i] = 0;
 }
}
