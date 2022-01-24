#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct decoder_owner {TYPE_1__* packetizer; } ;
struct TYPE_21__ {int (* pf_decode ) (TYPE_1__*,TYPE_2__*) ;TYPE_2__* (* pf_get_cc ) (TYPE_1__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  fmt_out; int /*<<< orphan*/  fmt_in; TYPE_2__* (* pf_packetize ) (TYPE_1__*,TYPE_2__**) ;int /*<<< orphan*/ * p_module; } ;
typedef  TYPE_1__ decoder_t ;
typedef  int /*<<< orphan*/  decoder_cc_desc_t ;
struct TYPE_22__ {struct TYPE_22__* p_next; } ;
typedef  TYPE_2__ block_t ;

/* Variables and functions */
 int VLCDEC_ECRITICAL ; 
 int VLC_EGENERIC ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct decoder_owner* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (TYPE_1__*,TYPE_2__**) ; 
 int FUNC8 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_2__* FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC11 (TYPE_1__*,TYPE_2__*) ; 

int FUNC12(decoder_t *decoder, block_t *p_block)
{
    struct decoder_owner *owner = FUNC3(decoder);
    decoder_t *packetizer = owner->packetizer;

    /* This case can happen if a decoder reload failed */
    if (decoder->p_module == NULL)
    {
        if (p_block != NULL)
            FUNC1(p_block);
        return VLC_EGENERIC;
    }

    block_t **pp_block = p_block ? &p_block : NULL;
    block_t *p_packetized_block;
    while ((p_packetized_block =
                packetizer->pf_packetize(packetizer, pp_block)))
    {

        if (!FUNC6(&decoder->fmt_in, &packetizer->fmt_out))
        {
            FUNC2("restarting module due to input format change\n");

            /* Drain the decoder module */
            decoder->pf_decode(decoder, NULL);

            /* Reload decoder */
            FUNC4(decoder);
            if (FUNC5(decoder, false, &packetizer->fmt_out) != VLC_SUCCESS)
            {
                FUNC0(p_packetized_block);
                return VLC_EGENERIC;
            }
        }

        if (packetizer->pf_get_cc)
        {
            decoder_cc_desc_t desc;
            block_t *p_cc = packetizer->pf_get_cc(packetizer, &desc);
            if (p_cc)
                FUNC1(p_cc);
        }

        while (p_packetized_block != NULL)
        {

            block_t *p_next = p_packetized_block->p_next;
            p_packetized_block->p_next = NULL;

            int ret = decoder->pf_decode(decoder, p_packetized_block);

            if (ret == VLCDEC_ECRITICAL)
            {
                FUNC0(p_next);
                return VLC_EGENERIC;
            }

            p_packetized_block = p_next;
        }
    }
    if (p_block == NULL) /* Drain */
        decoder->pf_decode(decoder, NULL);
    return VLC_SUCCESS;
}