
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int demux_t ;


 int CloseCapture (int *) ;
 int DemuxClose (int *) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t *)p_this;

    CloseCapture( p_demux );
    DemuxClose( p_this );
}
