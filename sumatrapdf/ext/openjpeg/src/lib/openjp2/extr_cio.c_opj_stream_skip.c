
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ (* m_opj_skip ) (TYPE_1__*,scalar_t__,int *) ;} ;
typedef TYPE_1__ opj_stream_private_t ;
typedef int opj_event_mgr_t ;
typedef scalar_t__ OPJ_OFF_T ;


 int assert (int) ;
 scalar_t__ stub1 (TYPE_1__*,scalar_t__,int *) ;

OPJ_OFF_T opj_stream_skip(opj_stream_private_t * p_stream, OPJ_OFF_T p_size,
                          opj_event_mgr_t * p_event_mgr)
{
    assert(p_size >= 0);
    return p_stream->m_opj_skip(p_stream, p_size, p_event_mgr);
}
