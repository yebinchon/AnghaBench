
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b_text_waiting; scalar_t__ i_clock; int suspended_deadline; int * window; int * p_cw; int input_buffer; } ;
typedef TYPE_1__ cea708_t ;


 size_t CEA708_WINDOWS_COUNT ;
 int CEA708_Window_Init (int *) ;
 int VLC_TICK_INVALID ;
 int cea708_input_buffer_init (int *) ;

__attribute__((used)) static void CEA708_Decoder_Init( cea708_t *p_cea708 )
{
    cea708_input_buffer_init( &p_cea708->input_buffer );
    for(size_t i=0; i<CEA708_WINDOWS_COUNT; i++)
        CEA708_Window_Init( &p_cea708->window[i] );
    p_cea708->p_cw = &p_cea708->window[0];
    p_cea708->suspended_deadline = VLC_TICK_INVALID;
    p_cea708->b_text_waiting = 0;
    p_cea708->i_clock = 0;
}
