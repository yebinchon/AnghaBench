
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ max_hints; int hints; } ;
typedef TYPE_1__* PS_Hint_Table ;
typedef scalar_t__ FT_UInt ;
typedef int FT_Memory ;
typedef int FT_Error ;


 int FT_Err_Ok ;
 scalar_t__ FT_PAD_CEIL (scalar_t__,int) ;
 int FT_RENEW_ARRAY (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static FT_Error
  ps_hint_table_ensure( PS_Hint_Table table,
                        FT_UInt count,
                        FT_Memory memory )
  {
    FT_UInt old_max = table->max_hints;
    FT_UInt new_max = count;
    FT_Error error = FT_Err_Ok;


    if ( new_max > old_max )
    {

      new_max = FT_PAD_CEIL( new_max, 8 );
      if ( !FT_RENEW_ARRAY( table->hints, old_max, new_max ) )
        table->max_hints = new_max;
    }
    return error;
  }
