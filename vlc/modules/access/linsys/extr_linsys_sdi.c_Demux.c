
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int demux_t ;


 scalar_t__ Capture (int *) ;
 scalar_t__ VLC_SUCCESS ;

__attribute__((used)) static int Demux( demux_t *p_demux )
{
    return ( Capture( p_demux ) == VLC_SUCCESS );
}
