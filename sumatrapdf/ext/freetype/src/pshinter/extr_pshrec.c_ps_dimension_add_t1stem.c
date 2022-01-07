
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ num_hints; TYPE_1__* hints; } ;
struct TYPE_7__ {int masks; TYPE_3__ hints; } ;
struct TYPE_6__ {int pos; int len; scalar_t__ flags; } ;
typedef int PS_Mask ;
typedef TYPE_1__* PS_Hint ;
typedef TYPE_2__* PS_Dimension ;
typedef scalar_t__ FT_UInt ;
typedef int FT_Memory ;
typedef int FT_Int ;
typedef int FT_Error ;


 int ADD_INT (int,int) ;
 int FT_Err_Ok ;
 scalar_t__ PS_HINT_FLAG_BOTTOM ;
 scalar_t__ PS_HINT_FLAG_GHOST ;
 int ps_hint_table_alloc (TYPE_3__*,int ,TYPE_1__**) ;
 int ps_mask_set_bit (int ,scalar_t__,int ) ;
 int ps_mask_table_last (int *,int ,int *) ;

__attribute__((used)) static FT_Error
  ps_dimension_add_t1stem( PS_Dimension dim,
                           FT_Int pos,
                           FT_Int len,
                           FT_Memory memory,
                           FT_Int *aindex )
  {
    FT_Error error = FT_Err_Ok;
    FT_UInt flags = 0;



    if ( len < 0 )
    {
      flags |= PS_HINT_FLAG_GHOST;
      if ( len == -21 )
      {
        flags |= PS_HINT_FLAG_BOTTOM;
        pos = ADD_INT( pos, len );
      }
      len = 0;
    }

    if ( aindex )
      *aindex = -1;


    {
      PS_Mask mask;
      FT_UInt idx;
      FT_UInt max = dim->hints.num_hints;
      PS_Hint hint = dim->hints.hints;


      for ( idx = 0; idx < max; idx++, hint++ )
      {
        if ( hint->pos == pos && hint->len == len )
          break;
      }


      if ( idx >= max )
      {
        error = ps_hint_table_alloc( &dim->hints, memory, &hint );
        if ( error )
          goto Exit;

        hint->pos = pos;
        hint->len = len;
        hint->flags = flags;
      }


      error = ps_mask_table_last( &dim->masks, memory, &mask );
      if ( error )
        goto Exit;

      error = ps_mask_set_bit( mask, idx, memory );
      if ( error )
        goto Exit;

      if ( aindex )
        *aindex = (FT_Int)idx;
    }

  Exit:
    return error;
  }
