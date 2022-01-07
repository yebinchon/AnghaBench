
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int decoder_t ;
struct TYPE_5__ {int * p_dec; } ;
typedef TYPE_1__ cea708_t ;


 int CEA708_Decoder_Init (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;

cea708_t * CEA708_Decoder_New( decoder_t *p_dec )
{
    cea708_t *p_cea708 = malloc( sizeof(cea708_t) );
    if( p_cea708 )
    {
        CEA708_Decoder_Init( p_cea708 );
        p_cea708->p_dec = p_dec;
    }
    return p_cea708;
}
