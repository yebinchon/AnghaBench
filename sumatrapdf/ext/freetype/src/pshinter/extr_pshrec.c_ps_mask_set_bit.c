
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_bits; int* bytes; } ;
typedef TYPE_1__* PS_Mask ;
typedef int FT_UInt ;
typedef int FT_Memory ;
typedef scalar_t__ FT_Error ;
typedef int FT_Byte ;


 scalar_t__ FT_Err_Ok ;
 scalar_t__ ps_mask_ensure (TYPE_1__*,int,int ) ;

__attribute__((used)) static FT_Error
  ps_mask_set_bit( PS_Mask mask,
                   FT_UInt idx,
                   FT_Memory memory )
  {
    FT_Error error = FT_Err_Ok;
    FT_Byte* p;


    if ( idx >= mask->num_bits )
    {
      error = ps_mask_ensure( mask, idx + 1, memory );
      if ( error )
        goto Exit;

      mask->num_bits = idx + 1;
    }

    p = mask->bytes + ( idx >> 3 );
    p[0] = (FT_Byte)( p[0] | ( 0x80 >> ( idx & 7 ) ) );

  Exit:
    return error;
  }
