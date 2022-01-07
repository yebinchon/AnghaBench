
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct hxxx_bsfw_ep3b_ctx_s {int dummy; } ;
struct hevc_dcr_values {void** general_configuration; int b_temporalIdNested; void* i_numTemporalLayer; } ;
typedef int bs_t ;


 int bs_init_custom (int *,int const*,size_t,int *,struct hxxx_bsfw_ep3b_ctx_s*) ;
 void* bs_read (int *,int) ;
 int bs_read1 (int *) ;
 int bs_skip (int *,int) ;
 int hxxx_bsfw_ep3b_callbacks ;
 int hxxx_bsfw_ep3b_ctx_init (struct hxxx_bsfw_ep3b_ctx_s*) ;

__attribute__((used)) static void hevc_dcr_params_from_vps( const uint8_t * p_buffer, size_t i_buffer,
                                      struct hevc_dcr_values *p_values )
{
    if( i_buffer < 19 )
        return;

    bs_t bs;
    struct hxxx_bsfw_ep3b_ctx_s bsctx;
    hxxx_bsfw_ep3b_ctx_init( &bsctx );
    bs_init_custom( &bs, p_buffer, i_buffer, &hxxx_bsfw_ep3b_callbacks, &bsctx );
    bs_skip( &bs, 16 + 4 + 2 + 6 );
    p_values->i_numTemporalLayer = bs_read( &bs, 3 ) + 1;
    p_values->b_temporalIdNested = bs_read1( &bs );


    bs_skip( &bs, 16 );

    for( unsigned i=0; i<12; i++ )
        p_values->general_configuration[i] = bs_read( &bs, 8 );
}
