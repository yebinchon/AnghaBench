
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ num_masks; } ;
typedef TYPE_1__* PS_Mask_Table ;
typedef int FT_UInt ;
typedef int FT_Memory ;
typedef scalar_t__ FT_Int ;
typedef scalar_t__ FT_Error ;


 scalar_t__ FT_Err_Ok ;
 scalar_t__ ps_mask_table_merge (TYPE_1__*,int ,int ,int ) ;
 scalar_t__ ps_mask_table_test_intersect (TYPE_1__*,int ,int ) ;

__attribute__((used)) static FT_Error
  ps_mask_table_merge_all( PS_Mask_Table table,
                           FT_Memory memory )
  {
    FT_Int index1, index2;
    FT_Error error = FT_Err_Ok;



    for ( index1 = (FT_Int)table->num_masks - 1; index1 > 0; index1-- )
    {
      for ( index2 = index1 - 1; index2 >= 0; index2-- )
      {
        if ( ps_mask_table_test_intersect( table,
                                           (FT_UInt)index1,
                                           (FT_UInt)index2 ) )
        {
          error = ps_mask_table_merge( table,
                                       (FT_UInt)index2,
                                       (FT_UInt)index1,
                                       memory );
          if ( error )
            goto Exit;

          break;
        }
      }
    }

  Exit:
    return error;
  }
