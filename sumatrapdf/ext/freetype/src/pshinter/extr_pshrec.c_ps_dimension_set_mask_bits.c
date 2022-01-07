
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int masks; } ;
typedef TYPE_1__* PS_Dimension ;
typedef int FT_UInt ;
typedef int FT_Memory ;
typedef scalar_t__ FT_Error ;
typedef int FT_Byte ;


 scalar_t__ ps_dimension_reset_mask (TYPE_1__*,int ,int ) ;
 scalar_t__ ps_mask_table_set_bits (int *,int const*,int ,int ,int ) ;

__attribute__((used)) static FT_Error
  ps_dimension_set_mask_bits( PS_Dimension dim,
                              const FT_Byte* source,
                              FT_UInt source_pos,
                              FT_UInt source_bits,
                              FT_UInt end_point,
                              FT_Memory memory )
  {
    FT_Error error;



    error = ps_dimension_reset_mask( dim, end_point, memory );
    if ( error )
      goto Exit;


    error = ps_mask_table_set_bits( &dim->masks, source,
                                    source_pos, source_bits, memory );

  Exit:
    return error;
  }
