
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ stack_top; scalar_t__ stack_size; int * stack; int * stack_0; int memory; } ;
typedef int FT_Offset ;
typedef int FT_Memory ;
typedef TYPE_1__* FT_LzwState ;
typedef int FT_Error ;


 scalar_t__ FT_RENEW_ARRAY (int *,int,int) ;
 int LZW_MAX_BITS ;

__attribute__((used)) static int
  ft_lzwstate_stack_grow( FT_LzwState state )
  {
    if ( state->stack_top >= state->stack_size )
    {
      FT_Memory memory = state->memory;
      FT_Error error;
      FT_Offset old_size = state->stack_size;
      FT_Offset new_size = old_size;

      new_size = new_size + ( new_size >> 1 ) + 4;

      if ( state->stack == state->stack_0 )
      {
        state->stack = ((void*)0);
        old_size = 0;
      }



      if ( new_size > ( 1 << LZW_MAX_BITS ) )
      {
        new_size = 1 << LZW_MAX_BITS;
        if ( new_size == old_size )
          return -1;
      }

      if ( FT_RENEW_ARRAY( state->stack, old_size, new_size ) )
        return -1;

      state->stack_size = new_size;
    }
    return 0;
  }
