
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int window_type ;
struct TYPE_5__ {int wind_type; float f_kaiser_alpha; } ;
typedef TYPE_1__ window_param ;
struct TYPE_6__ {float* pf_window_table; int i_buffer_size; } ;
typedef TYPE_2__ window_context ;


 float BH_A0 ;
 float BH_A1 ;
 float BH_A2 ;
 float BH_A3 ;


 float FT_A0 ;
 float FT_A1 ;
 float FT_A2 ;
 float FT_A3 ;
 float FT_A4 ;


 scalar_t__ M_PI ;
 float bessi0 (float) ;
 float cosf (float) ;
 float sqrtf (float) ;
 float* vlc_alloc (int,int) ;
 int vlc_assert_unreachable () ;

bool window_init( int i_buffer_size, window_param * p_param,
                  window_context * p_ctx )
{
    float * pf_table = ((void*)0);
    window_type wind_type = p_param->wind_type;

    if( wind_type != 129 && wind_type != 130
                          && wind_type != 131
                          && wind_type != 128 )
    {

        i_buffer_size = 0;
        goto exit;
    }

    pf_table = vlc_alloc( i_buffer_size, sizeof( *pf_table ) );
    if( !pf_table )
    {

        return 0;
    }

    int i_buffer_size_minus_1 = i_buffer_size - 1;
    switch( wind_type )
    {
    case 129:

        for( int i = 0; i < i_buffer_size; i++ )
        {
            float f_val = (float) i / (float) i_buffer_size_minus_1;
            pf_table[i] = 0.5f - 0.5f * cosf( 2.0f * (float) M_PI * f_val );
        }
        break;
    case 130:

        for( int i = 0; i < i_buffer_size; i++ )
        {
            float f_val = (float) i / (float) i_buffer_size_minus_1;
            pf_table[i] = FT_A0
                        - FT_A1 * cosf( 2.0f * (float) M_PI * f_val )
                        + FT_A2 * cosf( 4.0f * (float) M_PI * f_val )
                        - FT_A3 * cosf( 6.0f * (float) M_PI * f_val )
                        + FT_A4 * cosf( 8.0f * (float) M_PI * f_val );
        }
        break;
    case 131:

        for( int i = 0; i < i_buffer_size; i++ )
        {
            float f_val = (float) i / (float) i_buffer_size_minus_1;
            pf_table[i] = BH_A0
                        - BH_A1 * cosf( 2.0f * (float) M_PI * f_val )
                        + BH_A2 * cosf( 4.0f * (float) M_PI * f_val )
                        - BH_A3 * cosf( 6.0f * (float) M_PI * f_val );
        }
        break;
    case 128:
    {

        float f_pialph = (float) M_PI * p_param->f_kaiser_alpha;
        float f_bessi0_pialph = bessi0( f_pialph );
        for( int i = 0; i < i_buffer_size; i++ )
        {
            float f_val = (float) i / (float) i_buffer_size_minus_1;
            float f_term_to_square = 2.0f * f_val - 1.0f;
            float f_sqd_term = f_term_to_square * f_term_to_square;
            float f_sqr_term = sqrtf( 1.0f - f_sqd_term );
            pf_table[i] = bessi0( f_pialph * f_sqr_term ) / f_bessi0_pialph;
        }
        break;
    }
    default:

        vlc_assert_unreachable();
        break;
    }

exit:
    p_ctx->pf_window_table = pf_table;
    p_ctx->i_buffer_size = i_buffer_size;
    return 1;
}
