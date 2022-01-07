
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct decoder_owner {TYPE_1__* packetizer; } ;
struct TYPE_21__ {int (* pf_decode ) (TYPE_1__*,TYPE_2__*) ;TYPE_2__* (* pf_get_cc ) (TYPE_1__*,int *) ;int fmt_out; int fmt_in; TYPE_2__* (* pf_packetize ) (TYPE_1__*,TYPE_2__**) ;int * p_module; } ;
typedef TYPE_1__ decoder_t ;
typedef int decoder_cc_desc_t ;
struct TYPE_22__ {struct TYPE_22__* p_next; } ;
typedef TYPE_2__ block_t ;


 int VLCDEC_ECRITICAL ;
 int VLC_EGENERIC ;
 scalar_t__ VLC_SUCCESS ;
 int block_ChainRelease (TYPE_2__*) ;
 int block_Release (TYPE_2__*) ;
 int debug (char*) ;
 struct decoder_owner* dec_get_owner (TYPE_1__*) ;
 int decoder_Clean (TYPE_1__*) ;
 scalar_t__ decoder_load (TYPE_1__*,int,int *) ;
 int es_format_IsSimilar (int *,int *) ;
 TYPE_2__* stub1 (TYPE_1__*,TYPE_2__**) ;
 int stub2 (TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* stub3 (TYPE_1__*,int *) ;
 int stub4 (TYPE_1__*,TYPE_2__*) ;
 int stub5 (TYPE_1__*,TYPE_2__*) ;

int test_decoder_process(decoder_t *decoder, block_t *p_block)
{
    struct decoder_owner *owner = dec_get_owner(decoder);
    decoder_t *packetizer = owner->packetizer;


    if (decoder->p_module == ((void*)0))
    {
        if (p_block != ((void*)0))
            block_Release(p_block);
        return VLC_EGENERIC;
    }

    block_t **pp_block = p_block ? &p_block : ((void*)0);
    block_t *p_packetized_block;
    while ((p_packetized_block =
                packetizer->pf_packetize(packetizer, pp_block)))
    {

        if (!es_format_IsSimilar(&decoder->fmt_in, &packetizer->fmt_out))
        {
            debug("restarting module due to input format change\n");


            decoder->pf_decode(decoder, ((void*)0));


            decoder_Clean(decoder);
            if (decoder_load(decoder, 0, &packetizer->fmt_out) != VLC_SUCCESS)
            {
                block_ChainRelease(p_packetized_block);
                return VLC_EGENERIC;
            }
        }

        if (packetizer->pf_get_cc)
        {
            decoder_cc_desc_t desc;
            block_t *p_cc = packetizer->pf_get_cc(packetizer, &desc);
            if (p_cc)
                block_Release(p_cc);
        }

        while (p_packetized_block != ((void*)0))
        {

            block_t *p_next = p_packetized_block->p_next;
            p_packetized_block->p_next = ((void*)0);

            int ret = decoder->pf_decode(decoder, p_packetized_block);

            if (ret == VLCDEC_ECRITICAL)
            {
                block_ChainRelease(p_next);
                return VLC_EGENERIC;
            }

            p_packetized_block = p_next;
        }
    }
    if (p_block == ((void*)0))
        decoder->pf_decode(decoder, ((void*)0));
    return VLC_SUCCESS;
}
