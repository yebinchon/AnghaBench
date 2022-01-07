
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int i_extra; int p_extra; } ;
struct TYPE_7__ {TYPE_1__ fmt_in; } ;
typedef TYPE_2__ decoder_t ;
typedef int bs_t ;
struct TYPE_8__ {int i_flags; int i_buffer; int p_buffer; } ;
typedef TYPE_3__ block_t ;


 int BLOCK_FLAG_TYPE_B ;
 int BLOCK_FLAG_TYPE_I ;
 int BLOCK_FLAG_TYPE_MASK ;
 int BLOCK_FLAG_TYPE_P ;
 scalar_t__ bs_eof (int *) ;
 int bs_init (int *,int ,int ) ;
 int bs_read (int *,int) ;
 int bs_skip (int *,int const) ;

__attribute__((used)) static void ParseWMV3( decoder_t *p_dec, block_t *p_block )
{
    bs_t s;


    bs_init( &s, p_dec->fmt_in.p_extra, p_dec->fmt_in.i_extra );
    if( bs_read( &s, 2 ) == 3 )
        return;
    bs_skip( &s, 22 );
    const bool b_range_reduction = bs_read( &s, 1 );
    const bool b_has_frames = bs_read( &s, 3 ) > 0;
    bs_skip( &s, 2 );
    const bool b_frame_interpolation = bs_read( &s, 1 );
    if( bs_eof( &s ) )
        return;


    bs_init( &s, p_block->p_buffer, p_block->i_buffer );
    bs_skip( &s, b_frame_interpolation +
                 2 +
                 b_range_reduction );

    p_block->i_flags &= ~BLOCK_FLAG_TYPE_MASK;
    if( bs_read( &s, 1 ) )
        p_block->i_flags |= BLOCK_FLAG_TYPE_P;
    else if( !b_has_frames || bs_read( &s, 1 ) )
        p_block->i_flags |= BLOCK_FLAG_TYPE_I;
    else
        p_block->i_flags |= BLOCK_FLAG_TYPE_B;
}
