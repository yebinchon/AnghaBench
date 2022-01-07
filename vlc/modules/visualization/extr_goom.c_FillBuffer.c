
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_7__ {int i_blocks; int i_channels; TYPE_2__** pp_blocks; } ;
typedef TYPE_1__ goom_thread_t ;
typedef int date_t ;
struct TYPE_8__ {int i_buffer; scalar_t__ i_pts; int p_buffer; } ;
typedef TYPE_2__ block_t ;


 int FloatToInt16 (float) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ VLC_TICK_INVALID ;
 int __MIN (unsigned int,int) ;
 int block_Release (TYPE_2__*) ;
 scalar_t__ date_Get (int *) ;
 int date_Increment (int *,int) ;
 int date_Set (int *,scalar_t__) ;
 int memmove (TYPE_2__**,TYPE_2__**,int) ;

__attribute__((used)) static int FillBuffer( int16_t *p_data, int *pi_data,
                       date_t *pi_date, date_t *pi_date_end,
                       goom_thread_t *p_this )
{
    int i_samples = 0;
    block_t *p_block;

    while( *pi_data < 512 )
    {
        if( !p_this->i_blocks ) return VLC_EGENERIC;

        p_block = p_this->pp_blocks[0];
        i_samples = __MIN( (unsigned)(512 - *pi_data),
                p_block->i_buffer / sizeof(float) / p_this->i_channels );


        if( p_block->i_pts != VLC_TICK_INVALID &&
            p_block->i_pts != date_Get( pi_date_end ) )
        {
           date_Set( pi_date_end, p_block->i_pts );
        }
        p_block->i_pts = VLC_TICK_INVALID;

        date_Increment( pi_date_end, i_samples );

        while( i_samples > 0 )
        {
            float *p_float = (float *)p_block->p_buffer;

            p_data[*pi_data] = FloatToInt16( p_float[0] );
            if( p_this->i_channels > 1 )
                p_data[512 + *pi_data] = FloatToInt16( p_float[1] );

            (*pi_data)++;
            p_block->p_buffer += (sizeof(float) * p_this->i_channels);
            p_block->i_buffer -= (sizeof(float) * p_this->i_channels);
            i_samples--;
        }

        if( !p_block->i_buffer )
        {
            block_Release( p_block );
            p_this->i_blocks--;
            if( p_this->i_blocks )
                memmove( p_this->pp_blocks, p_this->pp_blocks + 1,
                         p_this->i_blocks * sizeof(block_t *) );
        }
    }

    *pi_date = *pi_date_end;
    *pi_data = 0;
    return VLC_SUCCESS;
}
