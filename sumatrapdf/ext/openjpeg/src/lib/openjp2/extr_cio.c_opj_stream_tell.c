
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_byte_offset; } ;
typedef TYPE_1__ opj_stream_private_t ;
typedef int OPJ_OFF_T ;



OPJ_OFF_T opj_stream_tell(const opj_stream_private_t * p_stream)
{
    return p_stream->m_byte_offset;
}
