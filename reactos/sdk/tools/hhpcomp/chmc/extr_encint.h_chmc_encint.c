
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt32 ;
typedef int UChar ;



__attribute__((used)) static inline int chmc_encint ( const UInt32 val, UChar *out ) {
 int len;
 UInt32 a;
 UChar *p, *l;


 if ( ! out || val > 0xfffffffUL )
  return 0;

 if ( val > 0x1fffffUL )
  len = 4;
 else if ( val > 0x3fffUL )
  len = 3;
 else if ( val > 0x7fUL )
  len = 2;
 else
  len = 1;

 a = val;
 l = p = out + (len - 1);

 while ( p >= out ) {
  *p = (a & 0x7fUL);
  if ( p < l )
   *p |= 0x80UL;
  p--;
  a >>= 7;
 }

 return len;
}
