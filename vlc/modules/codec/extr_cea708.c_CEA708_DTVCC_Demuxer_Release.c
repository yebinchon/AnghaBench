
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cea708_demux_t ;


 int free (int *) ;

void CEA708_DTVCC_Demuxer_Release( cea708_demux_t *h )
{
    free( h );
}
