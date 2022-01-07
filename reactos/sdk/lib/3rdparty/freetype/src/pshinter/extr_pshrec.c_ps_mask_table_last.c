
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ num_masks; scalar_t__ masks; } ;
typedef TYPE_1__* PS_Mask_Table ;
typedef scalar_t__ PS_Mask ;
typedef scalar_t__ FT_UInt ;
typedef int FT_Memory ;
typedef scalar_t__ FT_Error ;


 scalar_t__ FT_Err_Ok ;
 scalar_t__ ps_mask_table_alloc (TYPE_1__*,int ,scalar_t__*) ;

__attribute__((used)) static FT_Error
  ps_mask_table_last( PS_Mask_Table table,
                      FT_Memory memory,
                      PS_Mask *amask )
  {
    FT_Error error = FT_Err_Ok;
    FT_UInt count;
    PS_Mask mask;


    count = table->num_masks;
    if ( count == 0 )
    {
      error = ps_mask_table_alloc( table, memory, &mask );
      if ( error )
        goto Exit;
    }
    else
      mask = table->masks + count - 1;

  Exit:
    *amask = mask;
    return error;
  }
