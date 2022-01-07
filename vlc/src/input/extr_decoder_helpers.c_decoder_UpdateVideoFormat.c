
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decoder_t ;


 int decoder_UpdateVideoOutput (int *,int *) ;

int decoder_UpdateVideoFormat( decoder_t *dec )
{
    return decoder_UpdateVideoOutput( dec, ((void*)0) );
}
