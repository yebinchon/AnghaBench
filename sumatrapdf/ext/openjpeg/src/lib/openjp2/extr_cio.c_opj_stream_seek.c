
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct opj_event_mgr {int dummy; } ;
struct TYPE_4__ {int (* m_opj_seek ) (TYPE_1__*,scalar_t__,struct opj_event_mgr*) ;} ;
typedef TYPE_1__ opj_stream_private_t ;
typedef scalar_t__ OPJ_OFF_T ;
typedef int OPJ_BOOL ;


 int assert (int) ;
 int stub1 (TYPE_1__*,scalar_t__,struct opj_event_mgr*) ;

OPJ_BOOL opj_stream_seek(opj_stream_private_t * p_stream, OPJ_OFF_T p_size,
                         struct opj_event_mgr * p_event_mgr)
{
    assert(p_size >= 0);
    return p_stream->m_opj_seek(p_stream, p_size, p_event_mgr);
}
