
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int demux_t ;


 scalar_t__ const UINT32_MAX ;
 int VLC_EBADVAR ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ __MIN (scalar_t__,scalar_t__ const) ;
 scalar_t__ likely (int) ;
 int msg_Err (int *,char*,scalar_t__,scalar_t__ const) ;

__attribute__((used)) static int xTTS_CountEntries( demux_t *p_demux, uint32_t *pi_entry ,
                              const uint32_t i_index,
                              uint32_t i_index_samples_left,
                              uint32_t i_sample_count,
                              const uint32_t *pi_index_sample_count,
                              const uint32_t i_table_count )
{
    uint32_t i_array_offset;
    while( i_sample_count > 0 )
    {
        if ( likely((UINT32_MAX - i_index) >= *pi_entry) )
            i_array_offset = i_index + *pi_entry;
        else
            return VLC_EGENERIC;

        if ( i_array_offset >= i_table_count )
        {
            msg_Err( p_demux, "invalid index counting total samples %u %u", i_array_offset, i_table_count );
            return VLC_EBADVAR;
        }

        if ( i_index_samples_left )
        {
            if ( i_index_samples_left > i_sample_count )
            {
                i_index_samples_left -= i_sample_count;
                i_sample_count = 0;
                *pi_entry +=1;
                break;
            }
            else
            {
                i_sample_count -= i_index_samples_left;
                i_index_samples_left = 0;
                *pi_entry += 1;
                continue;
            }
        }
        else
        {
            i_sample_count -= __MIN( i_sample_count, pi_index_sample_count[i_array_offset] );
            *pi_entry += 1;
        }
    }

    return VLC_SUCCESS;
}
