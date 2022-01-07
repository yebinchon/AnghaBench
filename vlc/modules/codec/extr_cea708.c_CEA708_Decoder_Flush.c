
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cea708_t ;


 int CEA708_Decoder_Reset (int *) ;

void CEA708_Decoder_Flush( cea708_t *p_cea708 )
{
    CEA708_Decoder_Reset( p_cea708 );
}
