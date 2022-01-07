
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int b_supported; } ;
struct decoder_owner {TYPE_1__ cc; } ;
struct TYPE_6__ {int * (* pf_get_cc ) (TYPE_2__*,int *) ;} ;
typedef TYPE_2__ decoder_t ;
typedef int decoder_cc_desc_t ;
typedef int block_t ;


 int DecoderPlayCc (struct decoder_owner*,int *,int *) ;
 int assert (int ) ;
 int * stub1 (TYPE_2__*,int *) ;

__attribute__((used)) static void PacketizerGetCc( struct decoder_owner *p_owner, decoder_t *p_dec_cc )
{
    block_t *p_cc;
    decoder_cc_desc_t desc;


    if( !p_owner->cc.b_supported )
        return;

    assert( p_dec_cc->pf_get_cc != ((void*)0) );

    p_cc = p_dec_cc->pf_get_cc( p_dec_cc, &desc );
    if( !p_cc )
        return;
    DecoderPlayCc( p_owner, p_cc, &desc );
}
