
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * window; } ;
typedef TYPE_1__ cea708_t ;


 int CEA708_Decoder_Init (TYPE_1__*) ;
 size_t CEA708_WINDOWS_COUNT ;
 int CEA708_Window_Reset (int *) ;

__attribute__((used)) static void CEA708_Decoder_Reset( cea708_t *p_cea708 )
{
    for(size_t i=0; i<CEA708_WINDOWS_COUNT; i++)
        CEA708_Window_Reset( &p_cea708->window[i] );
    CEA708_Decoder_Init( p_cea708 );
}
