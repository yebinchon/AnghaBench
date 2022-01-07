
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prefix_size; scalar_t__ prefix; int * suffix; int memory; } ;
typedef int FT_UShort ;
typedef int FT_UInt ;
typedef int FT_Memory ;
typedef TYPE_1__* FT_LzwState ;
typedef int FT_Error ;
typedef int FT_Byte ;


 int FT_MEM_MOVE (int *,scalar_t__,int) ;
 scalar_t__ FT_REALLOC_MULT (scalar_t__,int,int,int) ;

__attribute__((used)) static int
  ft_lzwstate_prefix_grow( FT_LzwState state )
  {
    FT_UInt old_size = state->prefix_size;
    FT_UInt new_size = old_size;
    FT_Memory memory = state->memory;
    FT_Error error;


    if ( new_size == 0 )
      new_size = 512;
    else
      new_size += new_size >> 2;
    if ( FT_REALLOC_MULT( state->prefix, old_size, new_size,
                          sizeof ( FT_UShort ) + sizeof ( FT_Byte ) ) )
      return -1;


    state->suffix = (FT_Byte*)( state->prefix + new_size );

    FT_MEM_MOVE( state->suffix,
                 state->prefix + old_size,
                 old_size * sizeof ( FT_Byte ) );

    state->prefix_size = new_size;
    return 0;
  }
