
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ b_supported; } ;
struct decoder_owner {TYPE_2__* p_packetizer; TYPE_1__ cc; } ;
typedef int decoder_t ;
typedef int decoder_cc_desc_t ;
typedef int block_t ;
struct TYPE_4__ {int pf_get_cc; } ;


 int DecoderPlayCc (struct decoder_owner*,int *,int const*) ;
 int block_Release (int *) ;
 struct decoder_owner* dec_get_owner (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void ModuleThread_QueueCc( decoder_t *p_videodec, block_t *p_cc,
                                  const decoder_cc_desc_t *p_desc )
{
    struct decoder_owner *p_owner = dec_get_owner( p_videodec );

    if( unlikely( p_cc != ((void*)0) ) )
    {
        if( p_owner->cc.b_supported &&
           ( !p_owner->p_packetizer || !p_owner->p_packetizer->pf_get_cc ) )
            DecoderPlayCc( p_owner, p_cc, p_desc );
        else
            block_Release( p_cc );
    }
}
