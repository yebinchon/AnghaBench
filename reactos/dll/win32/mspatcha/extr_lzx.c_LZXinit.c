
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct LZXstate {int actual_size; int window_size; int R0; int R1; int R2; scalar_t__* LENGTH_len; scalar_t__* MAINTREE_len; scalar_t__ window_posn; scalar_t__ intel_started; scalar_t__ intel_curpos; int block_type; scalar_t__ block_remaining; scalar_t__ frames_read; scalar_t__ header_read; scalar_t__ main_elements; void* window; } ;
typedef int ULONG ;


 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,struct LZXstate*) ;
 int LZX_BLOCKTYPE_INVALID ;
 int LZX_LENGTH_MAXSYMBOLS ;
 int LZX_MAINTREE_MAXSYMBOLS ;
 scalar_t__ LZX_NUM_CHARS ;

struct LZXstate *LZXinit(int window)
{
    struct LZXstate *pState=((void*)0);
    ULONG wndsize = 1 << window;
    int i, posn_slots;



    if (window < 15 || window > 21) return ((void*)0);


    pState = HeapAlloc(GetProcessHeap(), 0, sizeof(struct LZXstate));
    if (!(pState->window = HeapAlloc(GetProcessHeap(), 0, wndsize)))
    {
        HeapFree(GetProcessHeap(), 0, pState);
        return ((void*)0);
    }
    pState->actual_size = wndsize;
    pState->window_size = wndsize;


    if (window == 20) posn_slots = 42;
    else if (window == 21) posn_slots = 50;
    else posn_slots = window << 1;





    pState->R0 = pState->R1 = pState->R2 = 1;
    pState->main_elements = LZX_NUM_CHARS + (posn_slots << 3);
    pState->header_read = 0;
    pState->frames_read = 0;
    pState->block_remaining = 0;
    pState->block_type = LZX_BLOCKTYPE_INVALID;
    pState->intel_curpos = 0;
    pState->intel_started = 0;
    pState->window_posn = 0;


    for (i = 0; i < LZX_MAINTREE_MAXSYMBOLS; i++) pState->MAINTREE_len[i] = 0;
    for (i = 0; i < LZX_LENGTH_MAXSYMBOLS; i++) pState->LENGTH_len[i] = 0;

    return pState;
}
