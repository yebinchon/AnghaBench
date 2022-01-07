
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cea708_t ;


 int CEA708_Decoder_Reset (int *) ;
 int free (int *) ;

void CEA708_Decoder_Release( cea708_t *p_cea708 )
{
    CEA708_Decoder_Reset( p_cea708 );
    free( p_cea708 );
}
