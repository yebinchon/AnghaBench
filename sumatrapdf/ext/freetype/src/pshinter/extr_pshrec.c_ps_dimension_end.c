
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int counters; } ;
typedef TYPE_1__* PS_Dimension ;
typedef int FT_UInt ;
typedef int FT_Memory ;
typedef int FT_Error ;


 int ps_dimension_end_mask (TYPE_1__*,int ) ;
 int ps_mask_table_merge_all (int *,int ) ;

__attribute__((used)) static FT_Error
  ps_dimension_end( PS_Dimension dim,
                    FT_UInt end_point,
                    FT_Memory memory )
  {

    ps_dimension_end_mask( dim, end_point );


    return ps_mask_table_merge_all( &dim->counters, memory );
  }
