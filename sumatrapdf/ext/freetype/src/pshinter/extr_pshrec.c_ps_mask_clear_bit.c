
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_bits; int* bytes; } ;
typedef TYPE_1__* PS_Mask ;
typedef int FT_UInt ;
typedef int FT_Byte ;



__attribute__((used)) static void
  ps_mask_clear_bit( PS_Mask mask,
                     FT_UInt idx )
  {
    FT_Byte* p;


    if ( idx >= mask->num_bits )
      return;

    p = mask->bytes + ( idx >> 3 );
    p[0] = (FT_Byte)( p[0] & ~( 0x80 >> ( idx & 7 ) ) );
  }
