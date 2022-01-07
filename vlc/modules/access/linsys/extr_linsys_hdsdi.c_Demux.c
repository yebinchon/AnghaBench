
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int demux_t ;


 scalar_t__ Capture (int *) ;
 int CloseCapture (int *) ;
 scalar_t__ InitCapture (int *) ;
 scalar_t__ VLC_SUCCESS ;

__attribute__((used)) static void *Demux( void *opaque )
{
    demux_t *p_demux = opaque;

    if( InitCapture( p_demux ) != VLC_SUCCESS )
        return ((void*)0);

    while( Capture( p_demux ) == VLC_SUCCESS );

    CloseCapture( p_demux );
    return ((void*)0);
}
