
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int out; } ;
typedef TYPE_1__ demux_t ;
typedef int buffer ;


 int DemuxBlock (TYPE_1__*,int const*,int) ;
 int ES_OUT_GET_EMPTY ;
 int es_out_Control (int ,int ,int*) ;

__attribute__((used)) static void DemuxForceStill( demux_t *p_demux )
{
    static const uint8_t buffer[] = {
        0x00, 0x00, 0x01, 0xe0, 0x00, 0x07,
        0x80, 0x00, 0x00,
        0x00, 0x00, 0x01, 0xB7,
    };
    DemuxBlock( p_demux, buffer, sizeof(buffer) );

    bool b_empty;
    es_out_Control( p_demux->out, ES_OUT_GET_EMPTY, &b_empty );
}
