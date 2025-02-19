
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct LZXstate {int R0; int R1; int R2; scalar_t__* LENGTH_len; scalar_t__* MAINTREE_len; scalar_t__ window_posn; scalar_t__ intel_started; scalar_t__ intel_curpos; int block_type; scalar_t__ block_remaining; scalar_t__ frames_read; scalar_t__ header_read; } ;


 int DECR_OK ;
 int LZX_BLOCKTYPE_INVALID ;
 int LZX_LENGTH_MAXSYMBOLS ;
 int LZX_LENTABLE_SAFETY ;
 int LZX_MAINTREE_MAXSYMBOLS ;

int LZXreset(struct LZXstate *pState)
{
    int i;

    pState->R0 = pState->R1 = pState->R2 = 1;
    pState->header_read = 0;
    pState->frames_read = 0;
    pState->block_remaining = 0;
    pState->block_type = LZX_BLOCKTYPE_INVALID;
    pState->intel_curpos = 0;
    pState->intel_started = 0;
    pState->window_posn = 0;

    for (i = 0; i < LZX_MAINTREE_MAXSYMBOLS + LZX_LENTABLE_SAFETY; i++) pState->MAINTREE_len[i] = 0;
    for (i = 0; i < LZX_LENGTH_MAXSYMBOLS + LZX_LENTABLE_SAFETY; i++) pState->LENGTH_len[i] = 0;

    return DECR_OK;
}
