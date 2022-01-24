#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int uint32_t ;
struct atomic_operation_t {int dummy; } ;
struct TYPE_5__ {unsigned int i_nb_atomic_operations; int i_overflow_buffer_size; int /*<<< orphan*/ * p_overflow_buffer; TYPE_2__* p_atomic_operations; } ;
typedef  TYPE_1__ filter_sys_t ;
struct TYPE_6__ {int i_delay; } ;

/* Variables and functions */
 int AOUT_CHAN_CENTER ; 
 int AOUT_CHAN_LEFT ; 
 int AOUT_CHAN_LFE ; 
 int AOUT_CHAN_MIDDLELEFT ; 
 int AOUT_CHAN_MIDDLERIGHT ; 
 int AOUT_CHAN_REARCENTER ; 
 int AOUT_CHAN_REARLEFT ; 
 int AOUT_CHAN_REARRIGHT ; 
 int AOUT_CHAN_RIGHT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned int,unsigned int,int,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 double FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC6( vlc_object_t *p_this, filter_sys_t * p_data
        , unsigned int i_nb_channels, uint32_t i_physical_channels
        , unsigned int i_rate )
{
    double d_x = FUNC5( p_this, "headphone-dim" );
    double d_z = d_x;
    double d_z_rear = -d_x/3;
    double d_min = 0;
    unsigned int i_next_atomic_operation;
    int i_source_channel_offset;
    unsigned int i;

    if( FUNC4( p_this, "headphone-compensate" ) )
    {
        /* minimal distance to any speaker */
        if( i_physical_channels & AOUT_CHAN_REARCENTER )
        {
            d_min = d_z_rear;
        }
        else
        {
            d_min = d_z;
        }
    }

    /* Number of elementary operations */
    p_data->i_nb_atomic_operations = i_nb_channels * 2;
    if( i_physical_channels & AOUT_CHAN_CENTER )
    {
        p_data->i_nb_atomic_operations += 2;
    }
    p_data->p_atomic_operations = FUNC2( sizeof(struct atomic_operation_t)
            * p_data->i_nb_atomic_operations );
    if( p_data->p_atomic_operations == NULL )
        return -1;

    /* For each virtual speaker, computes elementary wave propagation time
     * to each ear */
    i_next_atomic_operation = 0;
    i_source_channel_offset = 0;
    if( i_physical_channels & AOUT_CHAN_LEFT )
    {
        FUNC0( p_data , i_rate
                , i_next_atomic_operation , i_source_channel_offset
                , -d_x , d_z , d_min , 2.0 / i_nb_channels );
        i_next_atomic_operation += 2;
        i_source_channel_offset++;
    }
    if( i_physical_channels & AOUT_CHAN_RIGHT )
    {
        FUNC0( p_data , i_rate
                , i_next_atomic_operation , i_source_channel_offset
                , d_x , d_z , d_min , 2.0 / i_nb_channels );
        i_next_atomic_operation += 2;
        i_source_channel_offset++;
    }
    if( i_physical_channels & AOUT_CHAN_MIDDLELEFT )
    {
        FUNC0( p_data , i_rate
                , i_next_atomic_operation , i_source_channel_offset
                , -d_x , 0 , d_min , 1.5 / i_nb_channels );
        i_next_atomic_operation += 2;
        i_source_channel_offset++;
    }
    if( i_physical_channels & AOUT_CHAN_MIDDLERIGHT )
    {
        FUNC0( p_data , i_rate
                , i_next_atomic_operation , i_source_channel_offset
                , d_x , 0 , d_min , 1.5 / i_nb_channels );
        i_next_atomic_operation += 2;
        i_source_channel_offset++;
    }
    if( i_physical_channels & AOUT_CHAN_REARLEFT )
    {
        FUNC0( p_data , i_rate
                , i_next_atomic_operation , i_source_channel_offset
                , -d_x , d_z_rear , d_min , 1.5 / i_nb_channels );
        i_next_atomic_operation += 2;
        i_source_channel_offset++;
    }
    if( i_physical_channels & AOUT_CHAN_REARRIGHT )
    {
        FUNC0( p_data , i_rate
                , i_next_atomic_operation , i_source_channel_offset
                , d_x , d_z_rear , d_min , 1.5 / i_nb_channels );
        i_next_atomic_operation += 2;
        i_source_channel_offset++;
    }
    if( i_physical_channels & AOUT_CHAN_REARCENTER )
    {
        FUNC0( p_data , i_rate
                , i_next_atomic_operation , i_source_channel_offset
                , 0 , -d_z , d_min , 1.5 / i_nb_channels );
        i_next_atomic_operation += 2;
        i_source_channel_offset++;
    }
    if( i_physical_channels & AOUT_CHAN_CENTER )
    {
        /* having two center channels increases the spatialization effect */
        FUNC0( p_data , i_rate
                , i_next_atomic_operation , i_source_channel_offset
                , d_x / 5.0 , d_z , d_min , 0.75 / i_nb_channels );
        i_next_atomic_operation += 2;
        FUNC0( p_data , i_rate
                , i_next_atomic_operation , i_source_channel_offset
                , -d_x / 5.0 , d_z , d_min , 0.75 / i_nb_channels );
        i_next_atomic_operation += 2;
        i_source_channel_offset++;
    }
    if( i_physical_channels & AOUT_CHAN_LFE )
    {
        FUNC0( p_data , i_rate
                , i_next_atomic_operation , i_source_channel_offset
                , 0 , d_z_rear , d_min , 5.0 / i_nb_channels );
        i_next_atomic_operation += 2;
        i_source_channel_offset++;
    }

    /* Initialize the overflow buffer
     * we need it because the process induce a delay in the samples */
    p_data->i_overflow_buffer_size = 0;
    for( i = 0 ; i < p_data->i_nb_atomic_operations ; i++ )
    {
        if( p_data->i_overflow_buffer_size
                < p_data->p_atomic_operations[i].i_delay * 2 * sizeof (float) )
        {
            p_data->i_overflow_buffer_size
                = p_data->p_atomic_operations[i].i_delay * 2 * sizeof (float);
        }
    }
    p_data->p_overflow_buffer = FUNC2( p_data->i_overflow_buffer_size );
    if( p_data->p_overflow_buffer == NULL )
    {
        FUNC1( p_data->p_atomic_operations );
        return -1;
    }
    FUNC3( p_data->p_overflow_buffer, 0 , p_data->i_overflow_buffer_size );

    return 0;
}