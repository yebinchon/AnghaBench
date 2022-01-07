
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * p_decoder; } ;
typedef TYPE_1__ dvbpsi_t ;


 int dvbpsi_decoder_delete (int *) ;
 scalar_t__ dvbpsi_decoder_present (TYPE_1__*) ;

void ts_dvbpsi_DetachRawDecoder( dvbpsi_t *p_dvbpsi )
{
    if( dvbpsi_decoder_present( p_dvbpsi ) )
        dvbpsi_decoder_delete( p_dvbpsi->p_decoder );
    p_dvbpsi->p_decoder = ((void*)0);
}
