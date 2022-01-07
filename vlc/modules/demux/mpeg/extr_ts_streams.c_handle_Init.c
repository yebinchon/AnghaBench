
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* p_sys; } ;
typedef TYPE_1__ dvbpsi_t ;
typedef int demux_t ;


 int DVBPSI_MSG_DEBUG ;
 int dvbpsi_messages ;
 TYPE_1__* dvbpsi_new (int *,int ) ;

__attribute__((used)) static inline bool handle_Init( demux_t *p_demux, dvbpsi_t **handle )
{
    *handle = dvbpsi_new( &dvbpsi_messages, DVBPSI_MSG_DEBUG );
    if( !*handle )
        return 0;
    (*handle)->p_sys = (void *) p_demux;
    return 1;
}
