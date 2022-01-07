
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_2__ {int p_sys; } ;
typedef TYPE_1__ stream_t ;


 int xml_ReaderDelete (int ) ;

void Close_WPL( vlc_object_t* p_this )
{
    stream_t *p_demux = (stream_t*)p_this;

    xml_ReaderDelete( p_demux->p_sys );
}
