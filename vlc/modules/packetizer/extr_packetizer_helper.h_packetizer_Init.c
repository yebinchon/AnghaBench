
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int packetizer_validate_t ;
struct TYPE_3__ {int i_au_prepend; unsigned int i_au_min_size; int i_startcode; void* p_private; int pf_drain; int pf_validate; int pf_parse; int pf_reset; int pf_startcode_helper; int const* p_startcode; int const* p_au_prepend; scalar_t__ i_offset; int bytestream; int i_state; } ;
typedef TYPE_1__ packetizer_t ;
typedef int packetizer_reset_t ;
typedef int packetizer_parse_t ;
typedef int packetizer_drain_t ;
typedef int block_startcode_helper_t ;


 int STATE_NOSYNC ;
 int block_BytestreamInit (int *) ;

__attribute__((used)) static inline void packetizer_Init( packetizer_t *p_pack,
                                    const uint8_t *p_startcode, int i_startcode,
                                    block_startcode_helper_t pf_start_helper,
                                    const uint8_t *p_au_prepend, int i_au_prepend,
                                    unsigned i_au_min_size,
                                    packetizer_reset_t pf_reset,
                                    packetizer_parse_t pf_parse,
                                    packetizer_validate_t pf_validate,
                                    packetizer_drain_t pf_drain,
                                    void *p_private )
{
    p_pack->i_state = STATE_NOSYNC;
    block_BytestreamInit( &p_pack->bytestream );
    p_pack->i_offset = 0;

    p_pack->i_au_prepend = i_au_prepend;
    p_pack->p_au_prepend = p_au_prepend;
    p_pack->i_au_min_size = i_au_min_size;

    p_pack->i_startcode = i_startcode;
    p_pack->p_startcode = p_startcode;
    p_pack->pf_startcode_helper = pf_start_helper;
    p_pack->pf_reset = pf_reset;
    p_pack->pf_parse = pf_parse;
    p_pack->pf_validate = pf_validate;
    p_pack->pf_drain = pf_drain;
    p_pack->p_private = p_private;
}
