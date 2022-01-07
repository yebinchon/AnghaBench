
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ m_seek_fn; } ;
typedef TYPE_1__ opj_stream_private_t ;
typedef int OPJ_BOOL ;


 scalar_t__ opj_stream_default_seek ;

OPJ_BOOL opj_stream_has_seek(const opj_stream_private_t * p_stream)
{
    return p_stream->m_seek_fn != opj_stream_default_seek;
}
