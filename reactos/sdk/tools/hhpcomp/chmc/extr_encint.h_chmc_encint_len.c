
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt32 ;



__attribute__((used)) static inline int chmc_encint_len ( const UInt32 val ) {
 int len;


 if ( val > 0xfffffffUL )
  len = 0;
 else if ( val > 0x1fffffUL )
  len = 4;
 else if ( val > 0x3fffUL )
  len = 3;
 else if ( val > 0x7fUL )
  len = 2;
 else
  len = 1;

 return len;
}
