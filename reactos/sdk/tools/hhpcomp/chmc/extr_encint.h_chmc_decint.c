
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt32 ;
typedef int UChar ;



__attribute__((used)) static inline int chmc_decint ( const UChar *in, UInt32 *value ) {
 int len;

 len = 0;
 *value = 0;

 while ( (in[len] & 0x80) && (len < 3) ) {
  *value <<= 7;
  *value |= in[len] & 0x7f;
  len++;
 }
 *value <<= 7;
 *value |= in[len] & 0x7f;
 len++;

 return len;
}
